import '../../../../core/utils/result.dart';
import '../entities/movie_details.dart';

/// Abstract repository for fetching movie details.
/// This repository defines a method to retrieve detailed information about
/// a movie by its ID.
abstract class MovieDetailsRepository {
  /// Fetches detailed information about a movie by its ID.
  /// Returns a [Result] containing a [MovieDetails] entity.
  Future<Result<MovieDetails>> getMovieDetails(int movieId);
}
