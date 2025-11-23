import 'package:cinebuzz_flutter/features/movie_details/data/models/movie_details_model.dart';
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

  @GET('search/movie')
  Future<MoviesResponseModel> searchMovies(@Query('query') String query);

  @GET('/movie/{movie_id}')
  Future<MovieDetailsModel> getMovieDetails(@Path('movie_id') int movieId);
}
