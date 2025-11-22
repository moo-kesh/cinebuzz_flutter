import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/usecases/get_now_playing_movies.dart';
import '../../domain/usecases/get_trending_movies.dart';

part 'movies_bloc.freezed.dart';
part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc({
    required this.getTrendingMovies,
    required this.getNowPlayingMovies,
  }) : super(MoviesState()) {
    on<GetTrendingMoviesEvent>(_onGetTrendingMovies);
    on<GetNowPlayingMoviesEvent>(_onGetNowPlayingMovies);
  }

  final GetTrendingMovies getTrendingMovies;
  final GetNowPlayingMovies getNowPlayingMovies;

  Future<void> _onGetTrendingMovies(
    GetTrendingMoviesEvent event,
    Emitter<MoviesState> emit,
  ) async {
    emit(state.copyWith(status: MoviesStatus.loading));
    final result = await getTrendingMovies(const NoParams());

    result.when(
      success: (movies) => emit(
        state.copyWith(status: MoviesStatus.loaded, trendingMovies: movies),
      ),
      failure: (failure) => emit(
        state.copyWith(
          status: MoviesStatus.error,
          errorMessage: failure.message,
        ),
      ),
    );
  }

  Future<void> _onGetNowPlayingMovies(
    GetNowPlayingMoviesEvent event,
    Emitter<MoviesState> emit,
  ) async {
    emit(state.copyWith(status: MoviesStatus.loading));
    final result = await getNowPlayingMovies(const NoParams());

    result.when(
      success: (movies) => emit(
        state.copyWith(status: MoviesStatus.loaded, nowPlayingMovies: movies),
      ),
      failure: (failure) => emit(
        state.copyWith(
          status: MoviesStatus.error,
          errorMessage: failure.message,
        ),
      ),
    );
  }
}
