import '../../../../core/usecases/usecase.dart';
import '../../../../core/utils/result.dart';
import '../entities/movie.dart';
import '../repositories/movies_repository.dart';

/// Use case for searching movies by a query string.
/// Takes a [String] query as input and returns a [Result] containing a list of
/// [Movie] entities.
class SearchMovies implements UseCase<List<Movie>, String> {
  final MoviesRepository repository;

  SearchMovies(this.repository);

  @override
  Future<Result<List<Movie>>> call(String query) async {
    return await repository.searchMovies(query);
  }
}
