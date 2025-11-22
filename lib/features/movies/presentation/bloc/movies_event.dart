part of 'movies_bloc.dart';

@freezed
class MoviesEvent with _$MoviesEvent {
  const factory MoviesEvent.getTrendingMovies() = GetTrendingMoviesEvent;
  const factory MoviesEvent.getNowPlayingMovies() = GetNowPlayingMoviesEvent;
}
