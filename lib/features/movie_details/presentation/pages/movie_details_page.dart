import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../injection_container.dart';
import '../../../bookmark/presentation/bloc/bookmark/bookmark_cubit.dart';
import '../bloc/bloc/movie_details_bloc.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({super.key, required this.movieId});
  final int movieId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<MovieDetailsBloc>()..add(GetMovieDetailsEvent(movieId)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Movie Details'),
          actions: [
            IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {
                final params = ShareParams(
                  uri: Uri.parse('https://cinebuzz.link/movie/$movieId'),
                  title: 'Check out this movie!',
                );
                SharePlus.instance.share(params);
              },
            ),
            BlocProvider(
              create: (context) => sl<BookmarkCubit>(),
              child: BlocBuilder<BookmarkCubit, BookmarkState>(
                builder: (context, state) {
                  return IconButton(
                    icon: Icon(
                      state.isBookmarked
                          ? Icons.bookmark
                          : Icons.bookmark_border,
                    ),
                    onPressed: () {
                      final movieDetailsState = context
                          .read<MovieDetailsBloc>()
                          .state;
                      if (movieDetailsState.movieDetails != null) {
                        context.read<BookmarkCubit>().toggle(
                          context.read<MovieDetailsBloc>().state.movieDetails!,
                        );
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
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
