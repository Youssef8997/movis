import 'package:dartz/dartz.dart';
import 'package:movis/movies/domain/entities/movies_ent.dart';

import '../../../core/failure/failure.dart';
import '../repositories/base_movies_repo.dart';

class PopularCase{
  final BaseMoviesRepo baseMoviesRepo;
  const  PopularCase({required this.baseMoviesRepo});
  Future<Either<Failure,List<Movies>>> call()async {
    return await baseMoviesRepo.getPopularMovies();
  }
}