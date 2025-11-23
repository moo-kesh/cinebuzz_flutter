import 'package:cinebuzz_flutter/core/usecases/usecase.dart';

import '../../../../core/utils/result.dart';
import '../entities/movie_details.dart';
import '../repositories/movie_details_repository.dart';

/// Use case to get movie details by movie ID.
class GetMovieDetails extends UseCase<MovieDetails, int> {
  final MovieDetailsRepository repository;

  GetMovieDetails(this.repository);

  @override
  Future<Result<MovieDetails>> call(int movieId) {
    return repository.getMovieDetails(movieId);
  }
}
