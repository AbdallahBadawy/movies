import 'package:get_it/get_it.dart';
import 'package:movie_app/modules/movies/datalayer/datasource/movie_remote_data_source.dart';
import 'package:movie_app/modules/movies/datalayer/repository/movie_repository.dart';
import 'package:movie_app/modules/movies/domain/repository/base_movies_repository.dart';
import 'package:movie_app/modules/movies/domain/usecase/get_now_playing_movies.dart';
import 'package:movie_app/modules/movies/domain/usecase/get_popular_movies.dart';
import 'package:movie_app/modules/movies/domain/usecase/get_top_rated.dart';
import 'package:movie_app/modules/movies/presentaion/controller/movies_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    ///Movie Bloc
    // register Factory creat new object when Screen reloaded
    sl.registerFactory(
      () => MoviesBloc(
        sl(),
        sl(),
        sl(),
      ),
    );

    /// register LazySingleton creat same object when Screen reloaded
    ///Data Source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
      () => MovieRemoteDataSource(),
    );

    ///Repository
    sl.registerLazySingleton<BaseMovieRepository>(
      () => MoviesRepository(
        sl(),
      ),
    );

    /// Use Case
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
  }
}
