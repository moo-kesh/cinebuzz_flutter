import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../movie_details/domain/entities/movie_details.dart';
import '../../../../movies/domain/entities/movie.dart';
import '../../../domain/usecases/is_bookmarked.dart';
import '../../../domain/usecases/toggle_bookmark.dart';

part 'bookmark_cubit.freezed.dart';
part 'bookmark_state.dart';

class BookmarkCubit extends Cubit<BookmarkState> {
  final IsBookmarked isBookmarked;
  final ToggleBookmark toggleBookmark;

  BookmarkCubit({required this.isBookmarked, required this.toggleBookmark})
    : super(const BookmarkState());

  Future<void> checkBookmarkStatus(int movieId) async {
    emit(const BookmarkState(isLoading: true));
    final result = await isBookmarked(movieId);
    result.when(
      success: (isBookmarked) =>
          emit(BookmarkState(isBookmarked: isBookmarked)),
      failure: (failure) => emit(BookmarkState(message: failure.message)),
    );
  }

  Future<void> toggle(MovieDetails details) async {
    final currentState = state;
    if (currentState.isBookmarked) {
      emit(BookmarkState(isBookmarked: !currentState.isBookmarked));
    }

    final movie = Movie(
      id: details.id,
      title: details.title,
      originalTitle: details.title,
      overview: details.overview,
      posterPath: details.posterPath,
      backdropPath: details.backdropPath,
      releaseDate: details.releaseDate,
      voteAverage: details.voteAverage,
      voteCount: details.voteCount,
      popularity: 0.0,
      adult: false,
      genreIds: details.genres.map((g) => g.id).toList(),
      originalLanguage: 'en',
      video: false,
      mediaType: 'movie',
    );

    final result = await toggleBookmark(movie);
    result.when(
      success: (_) {
        // Success, state is already updated
      },
      failure: (failure) {
        // Revert on failure
        emit(currentState);

        emit(BookmarkState(message: failure.message));
      },
    );
  }
}
