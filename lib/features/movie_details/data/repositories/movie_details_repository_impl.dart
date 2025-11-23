import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/result.dart';
import '../../domain/entities/movie_details.dart';
import '../../domain/repositories/movie_details_repository.dart';
import '../datasources/movie_details_remote_data_source.dart';

class MovieDetailsRepositoryImpl implements MovieDetailsRepository {
  final MovieDetailsRemoteDataSource remoteDataSource;

  MovieDetailsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Result<MovieDetails>> getMovieDetails(int movieId) async {
    try {
      // TODO: Check local cache first
      final movieDetails = await remoteDataSource.getMovieDetails(movieId);
      return Result.success(movieDetails.toEntity());
    } on ServerException catch (e) {
      return Result.failure(ServerFailure(e.message));
    }
  }
}
