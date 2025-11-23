part of 'movie_details_bloc.dart';

enum MovieDetailsStatus { initial, loading, loaded, error }

@freezed
abstract class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState({
    @Default(MovieDetailsStatus.initial) MovieDetailsStatus status,
    MovieDetails? movieDetails,
    String? errorMessage,
  }) = _MovieDetailsState;
}
