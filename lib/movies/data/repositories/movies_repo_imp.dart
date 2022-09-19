import 'package:dartz/dartz.dart';
import 'package:movis/core/exception/exception.dart';
import 'package:movis/movies/data/data_sources/remote_data_source.dart';
import 'package:movis/movies/domain/entities/movies_ent.dart';
import 'package:movis/movies/domain/repositories/base_movies_repo.dart';

import '../../../core/failure/failure.dart';

class MoviesRepoImpl implements BaseMoviesRepo{
  BaseRemoteDataSource baseRemoteDataSource;

  MoviesRepoImpl({required this.baseRemoteDataSource});

  @override
  Future<Either<Failure,List<Movies>>> getNowPlaying()async {
final result= await baseRemoteDataSource.getPlayingNow();
try{
  return Right(result);
}on ServerException catch(failure){
  return left(ServerFailure(failure.msg));
}
  }

  @override
  Future<Either<Failure,List<Movies>>> getPopularMovies() async {
   final result= await baseRemoteDataSource.getPopular();
   try{
     return Right(result);
   }on ServerException catch(failure){
     return left(ServerFailure(failure.msg));
   }
  }

  @override
  Future<Either<Failure,List<Movies>>> getTopRated() async {
    final result=await baseRemoteDataSource.getTopRated();;
    try{
      return Right(result);
    }on ServerException catch(failure){
      return left(ServerFailure(failure.msg));
    }
  }
}