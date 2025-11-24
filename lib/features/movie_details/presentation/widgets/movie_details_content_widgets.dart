import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../core/utils/tmdb_image_utils.dart';
import '../../../../core/widgets/loading_shimmer.dart';
import '../../../bookmark/presentation/bloc/bookmark/bookmark_cubit.dart';
import '../../domain/entities/movie_details.dart';

class MovieDetailsLoadingWidget extends StatelessWidget {
  const MovieDetailsLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LoadingShimmer.rectangular(height: 400),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LoadingShimmer.rectangular(height: 32, width: 200),
                const SizedBox(height: 8),
                const LoadingShimmer.rectangular(height: 16, width: 150),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: const LoadingShimmer.rectangular(height: 48),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: const LoadingShimmer.rectangular(height: 48),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const LoadingShimmer.rectangular(height: 20, width: 100),
                const SizedBox(height: 16),
                const LoadingShimmer.rectangular(height: 100),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MovieDetailsSliverAppBar extends StatelessWidget {
  final MovieDetails movie;

  const MovieDetailsSliverAppBar({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 400,
      pinned: true,
      backgroundColor: Colors.black,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              imageUrl: TmdbImageUtils.buildBackdropUrl(
                movie.backdropPath ?? movie.posterPath ?? '',
                size: TmdbBackdropImageSize.original,
              ),
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(color: Colors.black),
              errorWidget: (context, url, error) =>
                  Container(color: Colors.black),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withValues(alpha: 0.5),
                    Colors.black,
                  ],
                  stops: const [0.5, 0.8, 1.0],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MovieTitleAndTagline extends StatelessWidget {
  final MovieDetails movie;

  const MovieTitleAndTagline({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          movie.title,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        if (movie.tagline != null && movie.tagline!.isNotEmpty) ...[
          const SizedBox(height: 8),
          Text(
            movie.tagline!,
            style: const TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
              color: Colors.grey,
            ),
          ),
        ],
      ],
    );
  }
}

class MovieActionButtons extends StatelessWidget {
  final MovieDetails movie;

  const MovieActionButtons({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton.icon(
            onPressed: () {
              final params = ShareParams(
                uri: Uri.parse('https://cinebuzz.link/movie/${movie.id}'),
                title: 'Check out ${movie.title}!',
              );
              SharePlus.instance.share(params);
            },
            icon: const Icon(Icons.share, color: Colors.black),
            label: const Text(
              'Share',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 12),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: BlocBuilder<BookmarkCubit, BookmarkState>(
            builder: (context, state) {
              final isBookmarked = state.isBookmarked;
              return ElevatedButton.icon(
                onPressed: () {
                  context.read<BookmarkCubit>().toggle(movie);
                },
                icon: Icon(
                  isBookmarked ? Icons.check : Icons.add,
                  color: Colors.white,
                ),
                label: Text(
                  isBookmarked ? 'My List' : 'My List',
                  style: const TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[800],
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class MovieInfoWidget extends StatelessWidget {
  final MovieDetails movie;

  const MovieInfoWidget({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.star, color: Colors.amber, size: 20),
            const SizedBox(width: 4),
            Text(
              '${movie.voteAverage.toStringAsFixed(1)} (${movie.voteCount})',
              style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 16),
            Text(
              movie.releaseDate.split('-').first,
              style: const TextStyle(color: Colors.white70),
            ),
            const SizedBox(width: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white70),
                borderRadius: BorderRadius.circular(2),
              ),
              child: const Text(
                'HD',
                style: TextStyle(color: Colors.white70, fontSize: 10),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: movie.genres.map((genre) {
            return Chip(
              label: Text(genre.name),
              backgroundColor: Colors.grey[900],
              labelStyle: const TextStyle(color: Colors.white70, fontSize: 12),
              padding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
            );
          }).toList(),
        ),
      ],
    );
  }
}
