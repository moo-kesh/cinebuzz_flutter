part of 'movies_bloc.dart';

enum MoviesStatus { initial, loading, loaded, error }

@freezed
abstract class MoviesState with _$MoviesState {
  const factory MoviesState({
    @Default(MoviesStatus.initial) MoviesStatus status,
    @Default([]) List<Movie> nowPlayingMovies,
    @Default([]) List<Movie> trendingMovies,
    String? errorMessage,
  }) = _MoviesState;
}
