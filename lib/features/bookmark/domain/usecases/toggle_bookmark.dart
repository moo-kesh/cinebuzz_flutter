import '../../../../core/usecases/usecase.dart';
import '../../../../core/utils/result.dart';
import '../../../movies/domain/entities/movie.dart';
import '../repositories/bookmark_repository.dart';

/// Use case for toggling the bookmark status of a movie.
class ToggleBookmark extends UseCase<void, Movie> {
  final BookmarkRepository repository;

  ToggleBookmark(this.repository);

  @override
  Future<Result<void>> call(Movie movie) async {
    return await repository.toggleBookmark(movie);
  }
}
