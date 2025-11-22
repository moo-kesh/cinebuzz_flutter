import 'package:dio/dio.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/network/movies_api_service.dart';
import '../models/movie_model.dart';

abstract class MoviesRemoteDataSource {
  Future<List<MovieModel>> getTrendingMovies();
  Future<List<MovieModel>> getNowPlayingMovies();
}

class MoviesRemoteDataSourceImpl implements MoviesRemoteDataSource {
  final MoviesApiService apiService;

  MoviesRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<MovieModel>> getTrendingMovies() async {
    try {
      final response = await apiService.getTrendingMovies();
      return response.results;
    } on DioException catch (e) {
      throw ServerException(e.message ?? 'Unknown Server Error');
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    try {
      final response = await apiService.getNowPlayingMovies();
      return response.results;
    } on DioException catch (e) {
      throw ServerException(e.message ?? 'Unknown Server Error');
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
