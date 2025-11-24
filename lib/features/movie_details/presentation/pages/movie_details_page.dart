import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../../../bookmark/presentation/bloc/bookmark/bookmark_cubit.dart';
import '../bloc/bloc/movie_details_bloc.dart';
import '../widgets/movie_details_content_widgets.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({super.key, required this.movieId});
  final int movieId;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              sl<MovieDetailsBloc>()..add(GetMovieDetailsEvent(movieId)),
        ),
        BlocProvider(
          create: (context) =>
              sl<BookmarkCubit>()..checkBookmarkStatus(movieId),
        ),
      ],
      child: Scaffold(
        body: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
          builder: (context, state) {
            if (state.status == MovieDetailsStatus.loading ||
                state.status == MovieDetailsStatus.initial) {
              return const MovieDetailsLoadingWidget();
            } else if (state.status == MovieDetailsStatus.error) {
              return Center(
                child: Text(state.errorMessage ?? 'An error occurred'),
              );
            } else if (state.movieDetails != null) {
              final movie = state.movieDetails!;
              return CustomScrollView(
                slivers: [
                  MovieDetailsSliverAppBar(movie: movie),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MovieTitleAndTagline(movie: movie),
                          const SizedBox(height: 16),
                          MovieActionButtons(movie: movie),
                          const SizedBox(height: 24),
                          MovieInfoWidget(movie: movie),
                          const SizedBox(height: 24),
                          const Text(
                            'Overview',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            movie.overview,
                            style: const TextStyle(
                              fontSize: 14,
                              height: 1.5,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
