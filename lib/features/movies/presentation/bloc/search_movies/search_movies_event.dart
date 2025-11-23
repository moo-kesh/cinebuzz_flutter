part of 'search_movies_bloc.dart';

@freezed
abstract class SearchMoviesEvent with _$SearchMoviesEvent {
  const factory SearchMoviesEvent.queryChanged(String query) =
      SearchMoviesQueryChanged;
}
