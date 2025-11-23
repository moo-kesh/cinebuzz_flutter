import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'core/network/api_interceptor.dart';
import 'core/network/movies_api_service.dart';
import 'features/movie_details/data/datasources/movie_details_remote_data_source.dart';
import 'features/movie_details/data/repositories/movie_details_repository_impl.dart';
import 'features/movie_details/domain/repositories/movie_details_repository.dart';
import 'features/movie_details/domain/usecases/get_movie_details.dart';
import 'features/movie_details/presentation/bloc/bloc/movie_details_bloc.dart';
import 'features/movies/data/datasources/movies_remote_data_source.dart';
import 'features/movies/data/repositories/movies_repository_impl.dart';
import 'features/movies/domain/repositories/movies_repository.dart';
import 'features/movies/domain/usecases/get_now_playing_movies.dart';
import 'features/movies/domain/usecases/get_trending_movies.dart';
import 'features/movies/presentation/bloc/movies_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Features - Movies
  // BLoC
  sl.registerFactory(
    () => MoviesBloc(getTrendingMovies: sl(), getNowPlayingMovies: sl()),
  );

  // Use cases
  sl.registerLazySingleton(() => GetTrendingMovies(sl()));
  sl.registerLazySingleton(() => GetNowPlayingMovies(sl()));

  // Repository
  sl.registerLazySingleton<MoviesRepository>(
    () => MoviesRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<MoviesRemoteDataSource>(
    () => MoviesRemoteDataSourceImpl(sl()),
  );
  sl.registerLazySingleton<MovieDetailsRemoteDataSource>(
    () => MovieDetailsRemoteDataSourceImpl(sl()),
  );

  // Features - Movie Details
  // BLoC
  sl.registerFactory(() => MovieDetailsBloc(getMovieDetails: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetMovieDetails(sl()));

  // Repository
  sl.registerLazySingleton<MovieDetailsRepository>(
    () => MovieDetailsRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<MovieDetailsRemoteDataSource>(
    () => MovieDetailsRemoteDataSourceImpl(sl()),
  );

  sl.registerLazySingleton<MoviesApiService>(() => MoviesApiService(sl()));

  // Core
  sl.registerLazySingleton<Dio>(() {
    final dio = Dio();
    dio.interceptors.add(ApiKeyInterceptor());
    return dio;
  });
}
