import 'package:cinebuzz_flutter/features/movies/data/models/movie_model.dart';
import 'package:hive_ce/hive.dart';

abstract class MoviesLocalDataSource {
  Future<List<MovieModel>> getLastTrendingMovies();
  Future<void> cacheTrendingMovies(List<MovieModel> movies);
  Future<List<MovieModel>> getLastNowPlayingMovies();
  Future<void> cacheNowPlayingMovies(List<MovieModel> movies);
}

class MoviesLocalDataSourceImpl implements MoviesLocalDataSource {
  final Box<MovieModel> movieBox;
  final Box<List<int>> movieListsBox;

  MoviesLocalDataSourceImpl({
    required this.movieBox,
    required this.movieListsBox,
  });

  @override
  Future<void> cacheTrendingMovies(List<MovieModel> movies) async {
    // 1. Cache the movies
    for (var movie in movies) {
      await movieBox.put(movie.id, movie);
    }
    // 2. Cache the list of IDs
    final ids = movies.map((e) => e.id).toList();
    await movieListsBox.put('trending', ids);
  }

  @override
  Future<List<MovieModel>> getLastTrendingMovies() async {
    final ids = movieListsBox.get('trending');
    if (ids == null) return [];

    final movies = <MovieModel>[];
    for (var id in ids) {
      final movie = movieBox.get(id);
      if (movie != null) {
        movies.add(movie);
      }
    }
    return movies;
  }

  @override
  Future<void> cacheNowPlayingMovies(List<MovieModel> movies) async {
    for (var movie in movies) {
      await movieBox.put(movie.id, movie);
    }
    final ids = movies.map((e) => e.id).toList();
    await movieListsBox.put('now_playing', ids);
  }

  @override
  Future<List<MovieModel>> getLastNowPlayingMovies() async {
    final ids = movieListsBox.get('now_playing');
    if (ids == null) return [];

    final movies = <MovieModel>[];
    for (var id in ids) {
      final movie = movieBox.get(id);
      if (movie != null) {
        movies.add(movie);
      }
    }
    return movies;
  }
}
