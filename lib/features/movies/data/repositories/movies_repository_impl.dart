import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/result.dart';
import '../../domain/entities/movie.dart';
import '../../domain/repositories/movies_repository.dart';
import '../datasources/movies_remote_data_source.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  final MoviesRemoteDataSource remoteDataSource;

  MoviesRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Result<List<Movie>>> getTrendingMovies() async {
    try {
      final remoteMovies = await remoteDataSource.getTrendingMovies();
      // TODO: Cache movies locally
      return Result.success(
        remoteMovies.map((model) => model.toEntity()).toList(),
      );
    } on ServerException catch (e) {
      return Result.failure(ServerFailure(e.message));
    }
  }

  @override
  Future<Result<List<Movie>>> getNowPlayingMovies() async {
    try {
      final remoteMovies = await remoteDataSource.getNowPlayingMovies();
      // TODO: Cache movies locally
      return Result.success(
        remoteMovies.map((model) => model.toEntity()).toList(),
      );
    } on ServerException catch (e) {
      return Result.failure(ServerFailure(e.message));
    }
  }
}
