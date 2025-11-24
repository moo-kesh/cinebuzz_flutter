import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/usecases/usecase.dart';
import '../../../../movies/domain/entities/movie.dart';
import '../../../domain/usecases/get_bookmarked_movies.dart';

part 'watchlist_bloc.freezed.dart';
part 'watchlist_event.dart';
part 'watchlist_state.dart';

class WatchlistBloc extends Bloc<WatchlistEvent, WatchlistState> {
  final GetBookmarkedMovies getBookmarkedMovies;

  WatchlistBloc({required this.getBookmarkedMovies})
    : super(const WatchlistState(status: WatchlistStatus.initial)) {
    on<_LoadWatchlist>(_onLoadWatchlist);
  }

  Future<void> _onLoadWatchlist(
    _LoadWatchlist event,
    Emitter<WatchlistState> emit,
  ) async {
    emit(state.copyWith(status: WatchlistStatus.loading));
    final result = await getBookmarkedMovies(const NoParams());
    result.when(
      success: (movies) =>
          emit(WatchlistState(status: WatchlistStatus.loaded, movies: movies)),
      failure: (failure) => emit(state.copyWith(message: failure.message)),
    );
  }
}
