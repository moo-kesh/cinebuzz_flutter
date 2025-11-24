import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/bookmark/presentation/pages/watchlist_page.dart';
import '../../features/movie_details/presentation/pages/movie_details_page.dart';
import '../../features/movies/presentation/pages/movies_page.dart';
import '../../features/movies/presentation/pages/search_movies_page.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MoviesPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'movie/:id',
          builder: (BuildContext context, GoRouterState state) {
            final String idStr = state.pathParameters['id']!;
            final int id = int.parse(idStr);
            return MovieDetailsPage(movieId: id);
          },
        ),
        GoRoute(
          path: 'search',
          builder: (BuildContext context, GoRouterState state) {
            return const SearchMoviesPage();
          },
        ),
        GoRoute(
          path: 'watchlist',
          builder: (BuildContext context, GoRouterState state) {
            return const WatchlistPage();
          },
        ),
      ],
    ),
  ],
);
