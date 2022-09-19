import 'package:dartz/dartz.dart';
import 'package:movis/movies/domain/repositories/base_movies_repo.dart';

import '../../../core/failure/failure.dart';
import '../entities/movies_ent.dart';

class GetNowPlaying{
  BaseMoviesRepo baseMoviesRepo;

  GetNowPlaying({ required this.baseMoviesRepo});
  Future<Either<Failure,List<Movies>>>call()async{
    return await baseMoviesRepo.getNowPlaying();
  }
}