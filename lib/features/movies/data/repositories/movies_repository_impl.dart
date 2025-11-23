import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/result.dart';
import '../../domain/entities/movie.dart';
import '../../domain/repositories/movies_repository.dart';
import '../datasources/movies_local_data_source.dart';
import '../datasources/movies_remote_data_source.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  final MoviesRemoteDataSource remoteDataSource;
  final MoviesLocalDataSource localDataSource;

  MoviesRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Result<List<Movie>>> getTrendingMovies() async {
    try {
      final remoteMovies = await remoteDataSource.getTrendingMovies();
      await localDataSource.cacheTrendingMovies(remoteMovies);
      return Result.success(
        remoteMovies.map((model) => model.toEntity()).toList(),
      );
    } on ServerException catch (e) {
      try {
        final localMovies = await localDataSource.getLastTrendingMovies();
        if (localMovies.isEmpty) {
          return Result.failure(ServerFailure(e.message));
        }
        return Result.success(
          localMovies.map((model) => model.toEntity()).toList(),
        );
      } catch (_) {
        return Result.failure(ServerFailure(e.message));
      }
    } catch (e) {
      // Fallback for other errors (e.g. no internet without ServerException)
      try {
        final localMovies = await localDataSource.getLastTrendingMovies();
        if (localMovies.isEmpty) {
          return Result.failure(const ServerFailure('Failed to load movies'));
        }
        return Result.success(
          localMovies.map((model) => model.toEntity()).toList(),
        );
      } catch (_) {
        return Result.failure(const ServerFailure('Failed to load movies'));
      }
    }
  }

  @override
  Future<Result<List<Movie>>> getNowPlayingMovies() async {
    try {
      final remoteMovies = await remoteDataSource.getNowPlayingMovies();
      await localDataSource.cacheNowPlayingMovies(remoteMovies);
      return Result.success(
        remoteMovies.map((model) => model.toEntity()).toList(),
      );
    } on ServerException catch (e) {
      try {
        final localMovies = await localDataSource.getLastNowPlayingMovies();
        if (localMovies.isEmpty) {
          return Result.failure(ServerFailure(e.message));
        }
        return Result.success(
          localMovies.map((model) => model.toEntity()).toList(),
        );
      } catch (_) {
        return Result.failure(ServerFailure(e.message));
      }
    } catch (e) {
      try {
        final localMovies = await localDataSource.getLastNowPlayingMovies();
        if (localMovies.isEmpty) {
          return Result.failure(const ServerFailure('Failed to load movies'));
        }
        return Result.success(
          localMovies.map((model) => model.toEntity()).toList(),
        );
      } catch (_) {
        return Result.failure(const ServerFailure('Failed to load movies'));
      }
    }
  }

  @override
  Future<Result<List<Movie>>> searchMovies(String query) async {
    try {
      final remoteMovies = await remoteDataSource.searchMovies(query);
      return Result.success(
        remoteMovies.map((model) => model.toEntity()).toList(),
      );
    } on ServerException catch (e) {
      return Result.failure(ServerFailure(e.message));
    }
  }
}
