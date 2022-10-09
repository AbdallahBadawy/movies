import 'package:dartz/dartz.dart';
import 'package:movie_app/modules/core/error/exception.dart';
import 'package:movie_app/modules/core/error/failure.dart';
import 'package:movie_app/modules/movies/datalayer/datasource/movie_remote_data_source.dart';
import 'package:movie_app/modules/movies/domain/entites/movie.dart';
import 'package:movie_app/modules/movies/domain/repository/base_movies_repository.dart';

class MoviesRepository extends BaseMovieRepository {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MoviesRepository(this.baseMovieRemoteDataSource);

  @override
  Future<Either<Failure, List<Movie>>> getNowPlaying() async {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovies();
    try {
      return Right(result);
    } on Serverexception catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.StatusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    final result = await baseMovieRemoteDataSource.getPopularMovies();
    try {
      return Right(result);
    } on Serverexception catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.StatusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    final result = await baseMovieRemoteDataSource.getTopRelatedMovies();
    try {
      return Right(result);
    } on Serverexception catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.StatusMessage));
    }
  }
}
