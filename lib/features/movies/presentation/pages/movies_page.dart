import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../../../bookmark/presentation/pages/watchlist_page.dart';
import '../../../movie_details/presentation/pages/movie_details_page.dart';
import '../bloc/movies_bloc.dart';
import 'search_movies_page.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MoviesBloc>()
        ..add(GetTrendingMoviesEvent())
        ..add(GetNowPlayingMoviesEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('CineBuzz'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchMoviesPage(),
                  ),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.bookmark),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WatchlistPage(),
                  ),
                );
              },
            ),
          ],
        ),
        body: BlocBuilder<MoviesBloc, MoviesState>(
          builder: (context, state) {
            return switch (state.status) {
              MoviesStatus.initial || MoviesStatus.loading => const Center(
                child: CircularProgressIndicator(),
              ),
              MoviesStatus.loaded => SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Trending',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: state.trendingMovies.length,
                        itemBuilder: (context, index) {
                          final movie = state.trendingMovies[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MovieDetailsPage(movieId: movie.id),
                                ),
                              );
                            },
                            child: Container(
                              width: 140,
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      color: Colors.grey[300],
                                      child: movie.posterPath != null
                                          ? CachedNetworkImage(
                                              imageUrl:
                                                  'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                                              fit: BoxFit.cover,
                                              placeholder: (context, url) =>
                                                  const Center(
                                                    child:
                                                        CircularProgressIndicator(),
                                                  ),
                                              errorWidget:
                                                  (context, url, error) =>
                                                      const Icon(Icons.error),
                                            )
                                          : const Icon(Icons.movie),
                                    ),
                                  ),
                                  Text(
                                    movie.title,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Now Playing',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.nowPlayingMovies.length,
                      itemBuilder: (context, index) {
                        final movie = state.nowPlayingMovies[index];
                        return ListTile(
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
                          subtitle: Text(movie.releaseDate ?? 'Unknown'),
                        );
                      },
                    ),
                  ],
                ),
              ),
              MoviesStatus.error => Center(
                child: Text(state.errorMessage ?? 'An error occurred'),
              ),
            };
          },
        ),
      ),
    );
  }
}
