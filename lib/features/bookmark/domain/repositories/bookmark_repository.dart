import '../../../../core/utils/result.dart';
import '../../../movies/domain/entities/movie.dart';

/// Abstract repository for managing bookmarked movies.
/// This repository defines methods to get, toggle, and check bookmark status
/// of movies.
abstract class BookmarkRepository {
  /// Fetches the list of bookmarked movies.
  Future<Result<List<Movie>>> getBookmarkedMovies();

  /// Toggles the bookmark status of a movie.
  Future<Result<void>> toggleBookmark(Movie movie);

  /// Checks if a movie is bookmarked.
  Future<Result<bool>> isBookmarked(int movieId);
}
