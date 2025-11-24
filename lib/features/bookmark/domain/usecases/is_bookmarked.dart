import '../../../../core/usecases/usecase.dart';
import '../../../../core/utils/result.dart';
import '../repositories/bookmark_repository.dart';

/// Use case for checking if a movie is bookmarked.
class IsBookmarked extends UseCase<bool, int> {
  final BookmarkRepository repository;

  IsBookmarked(this.repository);

  @override
  Future<Result<bool>> call(int movieId) async {
    return await repository.isBookmarked(movieId);
  }
}
