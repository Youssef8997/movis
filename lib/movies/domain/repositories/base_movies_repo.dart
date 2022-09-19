import 'package:dartz/dartz.dart';
import 'package:movis/core/failure/failure.dart';
import 'package:movis/movies/domain/entities/movies_ent.dart';

abstract class BaseMoviesRepo {
  Future<Either<Failure,List<Movies>>> getNowPlaying();
  Future<Either<Failure,List<Movies>>> getPopularMovies();
  Future<Either<Failure,List<Movies>>> getTopRated();
}
