import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../../../movie_details/presentation/pages/movie_details_page.dart';
import '../bloc/watchlist/watchlist_bloc.dart';

class WatchlistPage extends StatelessWidget {
  const WatchlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<WatchlistBloc>()..add(const WatchlistEvent.loadWatchlist()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Watchlist')),
        body: BlocBuilder<WatchlistBloc, WatchlistState>(
          builder: (context, state) {
            switch (state.status) {
              case WatchlistStatus.initial:
                return const SizedBox.shrink();
              case WatchlistStatus.loading:
                return const Center(child: CircularProgressIndicator());
              case WatchlistStatus.loaded:
                final movies = state.movies;
                if (movies.isEmpty) {
                  return const Center(child: Text('No movies in watchlist'));
                }
                return ListView.builder(
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    final movie = movies[index];
                    return ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                MovieDetailsPage(movieId: movie.id),
                          ),
                        ).then((_) {
                          // Refresh watchlist when returning from details page
                          if (context.mounted) {
                            context.read<WatchlistBloc>().add(
                              const WatchlistEvent.loadWatchlist(),
                            );
                          }
                        });
                      },
                      leading: SizedBox(
                        width: 50,
                        child: movie.posterPath != null
                            ? CachedNetworkImage(
                                imageUrl:
                                    'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                                fit: BoxFit.cover,
                                placeholder: (context, url) => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              )
                            : const Icon(Icons.movie),
                      ),
                      title: Text(movie.title),
                      subtitle: Text(movie.releaseDate ?? ''),
                    );
                  },
                );
              case WatchlistStatus.error:
                return Center(
                  child: Text(state.message ?? 'An error occurred'),
                );
            }
          },
        ),
      ),
    );
  }
}
