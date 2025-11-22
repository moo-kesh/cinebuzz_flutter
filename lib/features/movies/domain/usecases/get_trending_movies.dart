import '../../../../core/usecases/usecase.dart';
import '../../../../core/utils/result.dart';
import '../entities/movie.dart';
import '../repositories/movies_repository.dart';

/// Use case for fetching trending movies.
class GetTrendingMovies implements UseCase<List<Movie>, NoParams> {
  final MoviesRepository repository;

  GetTrendingMovies(this.repository);

  @override
  Future<Result<List<Movie>>> call(NoParams params) async {
    return await repository.getTrendingMovies();
  }
}
