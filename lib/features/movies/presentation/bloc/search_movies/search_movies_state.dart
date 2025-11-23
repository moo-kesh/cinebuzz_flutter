part of 'search_movies_bloc.dart';

enum SearchMoviesStatus { initial, loading, loaded, error }

@freezed
abstract class SearchMoviesState with _$SearchMoviesState {
  const factory SearchMoviesState({
    @Default(SearchMoviesStatus.initial) SearchMoviesStatus status,
    @Default([]) List<Movie> movies,
    String? errorMessage,
  }) = _SearchMoviesState;
}
