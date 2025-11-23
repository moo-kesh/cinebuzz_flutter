import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/transformers.dart';

import '../../../domain/entities/movie.dart';
import '../../../domain/usecases/search_movies.dart';

part 'search_movies_bloc.freezed.dart';
part 'search_movies_event.dart';
part 'search_movies_state.dart';

EventTransformer<T> _debounce<T>(Duration duration) {
  return (events, mapper) => events.debounceTime(duration).switchMap(mapper);
}

class SearchMoviesBloc extends Bloc<SearchMoviesEvent, SearchMoviesState> {
  SearchMoviesBloc({required this.searchMovies})
    : super(const SearchMoviesState()) {
    on<SearchMoviesQueryChanged>(
      _onSearchMoviesQueryChanged,
      // Apply debounce transformer to the event handler to limit the frequency
      // of search requests
      transformer: _debounce(const Duration(milliseconds: 600)),
    );
  }

  final SearchMovies searchMovies;

  Future<void> _onSearchMoviesQueryChanged(
    SearchMoviesQueryChanged event,
    Emitter<SearchMoviesState> emit,
  ) async {
    if (event.query.isEmpty) {
      emit(const SearchMoviesState());
      return;
    }

    emit(state.copyWith(status: SearchMoviesStatus.loading));
    final result = await searchMovies(event.query);

    result.when(
      success: (movies) => emit(
        state.copyWith(status: SearchMoviesStatus.loaded, movies: movies),
      ),
      failure: (failure) => emit(
        state.copyWith(
          status: SearchMoviesStatus.error,
          errorMessage: failure.message,
        ),
      ),
    );
  }
}
