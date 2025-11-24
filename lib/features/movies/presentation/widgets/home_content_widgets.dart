import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widgets/loading_shimmer.dart';
import '../../domain/entities/movie.dart';
import 'hero_movie_card.dart';
import 'movie_poster_card.dart';

class MoviesLoadingWidget extends StatelessWidget {
  const MoviesLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LoadingShimmer.rectangular(height: 500),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: const LoadingShimmer.rectangular(height: 20, width: 150),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: const LoadingShimmer.rectangular(
                  width: 110,
                  height: 160,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MoviesHeroSection extends StatelessWidget {
  final List<Movie> trendingMovies;

  const MoviesHeroSection({super.key, required this.trendingMovies});

  @override
  Widget build(BuildContext context) {
    if (trendingMovies.isEmpty) return const SizedBox.shrink();

    // Show only the top 5 trending movies in the carousel
    final topTrending = trendingMovies.take(5).toList();

    return CarouselSlider(
      options: CarouselOptions(
        height: 500,
        viewportFraction: 1.0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
      ),
      items: topTrending.map((movie) {
        return HeroMovieCard(
          movie: movie,
          onTap: () => context.push('/movie/${movie.id}'),
        );
      }).toList(),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

class MoviesHorizontalList extends StatelessWidget {
  final List<Movie> movies;

  const MoviesHorizontalList({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return MoviePosterCard(
            movie: movie,
            onTap: () => context.push('/movie/${movie.id}'),
          );
        },
      ),
    );
  }
}
