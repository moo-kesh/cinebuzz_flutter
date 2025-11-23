part of 'movie_details_bloc.dart';

@freezed
abstract class MovieDetailsEvent with _$MovieDetailsEvent {
  const factory MovieDetailsEvent.getMovieDetails(int movieId) =
      GetMovieDetailsEvent;
}
