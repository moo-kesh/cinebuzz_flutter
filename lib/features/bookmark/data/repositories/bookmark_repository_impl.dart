import '../../../../core/error/failures.dart';
import '../../../../core/utils/result.dart';
import '../../../movies/data/models/movie_model.dart';
import '../../../movies/domain/entities/movie.dart';
import '../../domain/repositories/bookmark_repository.dart';
import '../datasources/bookmark_local_data_source.dart';

class BookmarkRepositoryImpl extends BookmarkRepository {
  final BookmarkLocalDataSource localDataSource;

  BookmarkRepositoryImpl({required this.localDataSource});

  @override
  Future<Result<List<Movie>>> getBookmarkedMovies() async {
    try {
      final localMovies = await localDataSource.getBookmarkedMovies();
      return Result.success(
        localMovies.map((model) => model.toEntity()).toList(),
      );
    } catch (e) {
      return Result.failure(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Result<void>> toggleBookmark(Movie movie) async {
    try {
      final isBookmarked = await localDataSource.isBookmarked(movie.id);
      if (isBookmarked) {
        await localDataSource.removeBookmark(movie.id);
      } else {
        await localDataSource.addBookmark(MovieModel.fromEntity(movie));
      }
      return const Result.success(null);
    } catch (e) {
      return Result.failure(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Result<bool>> isBookmarked(int movieId) async {
    try {
      final isBookmarked = await localDataSource.isBookmarked(movieId);
      return Result.success(isBookmarked);
    } catch (e) {
      return Result.failure(CacheFailure(e.toString()));
    }
  }
}
