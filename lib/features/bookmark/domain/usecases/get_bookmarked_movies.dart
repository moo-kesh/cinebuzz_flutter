import '../../../../core/usecases/usecase.dart';
import '../../../../core/utils/result.dart';
import '../../../movies/domain/entities/movie.dart';
import '../repositories/bookmark_repository.dart';

/// Use case for fetching bookmarked movies.
class GetBookmarkedMovies extends UseCase<List<Movie>, NoParams> {
  final BookmarkRepository repository;

  GetBookmarkedMovies(this.repository);

  @override
  Future<Result<List<Movie>>> call(NoParams params) async {
    return await repository.getBookmarkedMovies();
  }
}
