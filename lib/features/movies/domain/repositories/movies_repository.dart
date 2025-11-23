import '../../../../core/utils/result.dart';
import '../entities/movie.dart';

/// Abstract repository for fetching movie data.
/// This repository defines methods to retrieve trending and now playing movies.
abstract class MoviesRepository {
  /// Fetches a list of trending movies.
  /// Returns a [Result] containing a list of [Movie] entities.
  Future<Result<List<Movie>>> getTrendingMovies();

  /// Fetches a list of movies that are currently playing in theaters.
  /// Returns a [Result] containing a list of [Movie] entities.
  Future<Result<List<Movie>>> getNowPlayingMovies();

  /// Searches for movies based on a query string.
  /// Returns a [Result] containing a list of [Movie] entities.
  Future<Result<List<Movie>>> searchMovies(String query);
}
