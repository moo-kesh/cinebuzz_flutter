import '../../../../core/usecases/usecase.dart';
import '../../../../core/utils/result.dart';
import '../entities/movie.dart';
import '../repositories/movies_repository.dart';

/// Use case for fetching now playing movies.
class GetNowPlayingMovies implements UseCase<List<Movie>, NoParams> {
  final MoviesRepository repository;

  GetNowPlayingMovies(this.repository);

  @override
  Future<Result<List<Movie>>> call(NoParams params) async {
    return await repository.getNowPlayingMovies();
  }
}
