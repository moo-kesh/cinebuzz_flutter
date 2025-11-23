import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/movie_details.dart';
import '../../../domain/usecases/get_movie_details.dart';

part 'movie_details_bloc.freezed.dart';
part 'movie_details_event.dart';
part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc({required this.getMovieDetails})
    : super(MovieDetailsState(status: MovieDetailsStatus.initial)) {
    on<GetMovieDetailsEvent>(_onGetMovieDetails);
  }

  final GetMovieDetails getMovieDetails;

  FutureOr<void> _onGetMovieDetails(
    GetMovieDetailsEvent event,
    Emitter<MovieDetailsState> emit,
  ) async {
    emit(state.copyWith(status: MovieDetailsStatus.loading));
    final result = await getMovieDetails(event.movieId);

    result.when(
      success: (movieDetails) => emit(
        state.copyWith(
          status: MovieDetailsStatus.loaded,
          movieDetails: movieDetails,
        ),
      ),
      failure: (failure) => emit(
        state.copyWith(
          status: MovieDetailsStatus.error,
          errorMessage: failure.message,
        ),
      ),
    );
  }
}
