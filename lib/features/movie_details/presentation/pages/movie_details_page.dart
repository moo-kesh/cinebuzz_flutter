import 'package:cinebuzz_flutter/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc/movie_details_bloc.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({super.key, required this.movieId});
  final int movieId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<MovieDetailsBloc>()
            ..add(GetMovieDetailsEvent(movieId)), // Example movieId
      child: Scaffold(
        appBar: AppBar(title: const Text('Movie Details')),
        body: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
          builder: (context, state) {
            return switch (state.status) {
              MovieDetailsStatus.initial || MovieDetailsStatus.loading =>
                const Center(child: CircularProgressIndicator()),
              MovieDetailsStatus.loaded => SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      state.movieDetails?.title ?? 'No Title',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(state.movieDetails?.overview ?? 'No Overview'),
                    // Add more movie details here
                  ],
                ),
              ),
              MovieDetailsStatus.error => Center(
                child: Text(state.errorMessage ?? 'An error occurred'),
              ),
            };
          },
        ),
      ),
    );
  }
}
