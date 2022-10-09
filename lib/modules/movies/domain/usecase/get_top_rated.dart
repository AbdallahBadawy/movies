import 'package:dartz/dartz.dart';
import 'package:movie_app/modules/core/error/failure.dart';
import 'package:movie_app/modules/movies/domain/entites/movie.dart';
import 'package:movie_app/modules/movies/domain/repository/base_movies_repository.dart';

class GetTopRatedMoviesUseCase {
  final BaseMovieRepository baseMovieRepository;

  GetTopRatedMoviesUseCase(this.baseMovieRepository);
  Future<Either<Failure, List<Movie>>> execute() async {
    return await baseMovieRepository.getTopRatedMovies();
  }
}
