import 'package:dartz/dartz.dart';
import 'package:movie_app/modules/core/error/failure.dart';
import 'package:movie_app/modules/movies/datalayer/datasource/movie_remote_data_source.dart';
import 'package:movie_app/modules/movies/domain/entites/movie.dart';

abstract class BaseMovieRepository {
  

  Future<Either<Failure, List<Movie>>> getNowPlaying();
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
}
