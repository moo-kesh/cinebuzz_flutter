import 'package:hive_ce/hive.dart';

import '../../../movies/data/models/movie_model.dart';

abstract class BookmarkLocalDataSource {
  Future<List<MovieModel>> getBookmarkedMovies();
  Future<void> addBookmark(MovieModel movie);
  Future<void> removeBookmark(int movieId);
  Future<bool> isBookmarked(int movieId);
}

class BookmarkLocalDataSourceImpl implements BookmarkLocalDataSource {
  final Box<MovieModel> movieBox;
  final Box<List<int>> movieListsBox;

  BookmarkLocalDataSourceImpl({
    required this.movieBox,
    required this.movieListsBox,
  });

  @override
  Future<List<MovieModel>> getBookmarkedMovies() async {
    final ids = movieListsBox.get('bookmarks') ?? [];
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
  Future<void> addBookmark(MovieModel movie) async {
    await movieBox.put(movie.id, movie);
    final ids = (movieListsBox.get('bookmarks') ?? []).toList();
    if (!ids.contains(movie.id)) {
      ids.add(movie.id);
      await movieListsBox.put('bookmarks', ids);
    }
  }

  @override
  Future<void> removeBookmark(int movieId) async {
    final ids = (movieListsBox.get('bookmarks') ?? []).toList();
    if (ids.contains(movieId)) {
      ids.remove(movieId);
      await movieListsBox.put('bookmarks', ids);
    }
  }

  @override
  Future<bool> isBookmarked(int movieId) async {
    final ids = movieListsBox.get('bookmarks') ?? [];
    return ids.contains(movieId);
  }
}
