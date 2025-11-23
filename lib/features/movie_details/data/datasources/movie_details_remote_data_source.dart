import 'package:dio/dio.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/network/movies_api_service.dart';
import '../models/movie_details_model.dart';

abstract class MovieDetailsRemoteDataSource {
  Future<MovieDetailsModel> getMovieDetails(int movieId);
}

class MovieDetailsRemoteDataSourceImpl implements MovieDetailsRemoteDataSource {
  final MoviesApiService apiService;

  MovieDetailsRemoteDataSourceImpl(this.apiService);

  @override
  Future<MovieDetailsModel> getMovieDetails(int movieId) async {
    try {
      final response = await apiService.getMovieDetails(movieId);
      return response;
    } on DioException catch (e) {
      throw ServerException(e.message ?? 'Unknown Server Error');
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
