import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../../../movie_details/presentation/pages/movie_details_page.dart';
import '../bloc/search_movies/search_movies_bloc.dart';

class SearchMoviesPage extends StatelessWidget {
  const SearchMoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SearchMoviesBloc>(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Search Movies')),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Builder(
                builder: (context) {
                  return TextField(
                    decoration: const InputDecoration(
                      hintText: 'Search for movies...',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.search),
                    ),
                    onChanged: (query) {
                      context.read<SearchMoviesBloc>().add(
                        SearchMoviesEvent.queryChanged(query),
                      );
                    },
                  );
                },
              ),
            ),
            Expanded(
              child: BlocBuilder<SearchMoviesBloc, SearchMoviesState>(
                builder: (context, state) {
                  if (state.status == SearchMoviesStatus.loading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state.status == SearchMoviesStatus.error) {
                    return Center(
                      child: Text(state.errorMessage ?? 'An error occurred'),
                    );
                  } else if (state.status == SearchMoviesStatus.loaded) {
                    if (state.movies.isEmpty) {
                      return const Center(child: Text('No movies found'));
                    }
                    return ListView.builder(
                      itemCount: state.movies.length,
                      itemBuilder: (context, index) {
                        final movie = state.movies[index];
                        return ListTile(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MovieDetailsPage(movieId: movie.id),
                              ),
                            );
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
                        );
                      },
                    );
                  }
                  return const Center(child: Text('Start searching...'));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
