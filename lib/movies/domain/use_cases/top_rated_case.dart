import 'package:dartz/dartz.dart';
import 'package:movis/core/failure/failure.dart';
import 'package:movis/movies/domain/entities/movies_ent.dart';

import '../repositories/base_movies_repo.dart';

class TopRatedCase{
  final BaseMoviesRepo baseMoviesRepo;

const  TopRatedCase({required this.baseMoviesRepo});
  Future<Either<Failure,List<Movies>>> call()async {
  return await baseMoviesRepo.getTopRated();
}
}