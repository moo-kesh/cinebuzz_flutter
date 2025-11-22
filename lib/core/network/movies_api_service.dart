import 'package:cinebuzz_flutter/features/movies/data/models/movies_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'movies_api_service.g.dart';

@RestApi(baseUrl: 'https://api.themoviedb.org/3/')
abstract class MoviesApiService {
  factory MoviesApiService(Dio dio, {String baseUrl}) = _MoviesApiService;

  @GET('trending/movie/day')
  Future<MoviesResponseModel> getTrendingMovies();

  @GET('movie/now_playing')
  Future<MoviesResponseModel> getNowPlayingMovies();
}
