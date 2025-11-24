import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../injection_container.dart';
import '../bloc/movies_bloc.dart';
import '../widgets/home_content_widgets.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MoviesBloc>()
        ..add(GetTrendingMoviesEvent())
        ..add(GetNowPlayingMoviesEvent()),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withValues(alpha: 0.7),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          title: const Text(
            'CINEBUZZ',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 24,
              letterSpacing: 1.5,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () => context.push('/search'),
            ),
            IconButton(
              icon: const Icon(Icons.bookmarks, color: Colors.white),
              onPressed: () => context.push('/watchlist'),
            ),
            const SizedBox(width: 16),
          ],
        ),
        body: BlocBuilder<MoviesBloc, MoviesState>(
          builder: (context, state) {
            if (state.status == MoviesStatus.loading ||
                state.status == MoviesStatus.initial) {
              return const MoviesLoadingWidget();
            } else if (state.status == MoviesStatus.error) {
              return Center(
                child: Text(state.errorMessage ?? 'An error occurred'),
              );
            }

            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: MoviesHeroSection(
                    trendingMovies: state.trendingMovies,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SectionTitle(title: 'Trending Now'),
                ),
                SliverToBoxAdapter(
                  child: MoviesHorizontalList(movies: state.trendingMovies),
                ),
                const SliverToBoxAdapter(
                  child: SectionTitle(title: 'Now Playing'),
                ),
                SliverToBoxAdapter(
                  child: MoviesHorizontalList(movies: state.nowPlayingMovies),
                ),
                const SliverPadding(padding: EdgeInsets.only(bottom: 20)),
              ],
            );
          },
        ),
      ),
    );
  }
}
