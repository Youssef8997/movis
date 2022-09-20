import 'package:get_it/get_it.dart';
import 'package:movis/movies/data/data_sources/remote_data_source.dart';
import 'package:movis/movies/data/repositories/movies_repo_imp.dart';
import 'package:movis/movies/domain/repositories/base_movies_repo.dart';
import 'package:movis/movies/domain/use_cases/now_playing_case.dart';
import 'package:movis/movies/domain/use_cases/top_rated_case.dart';

import '../../movies/domain/use_cases/popular_case.dart';

var sl=GetIt.instance;
class ServiceLocator {
  void init(){
    //data Source
    sl.registerLazySingleton<BaseRemoteDataSource>(() =>RemoteDataSource() );
    //repository
    sl.registerLazySingleton<BaseMoviesRepo>(() => MoviesRepoImpl(baseRemoteDataSource: sl()));
    //use cases
    sl.registerLazySingleton<GetNowPlaying>(() =>GetNowPlaying(baseMoviesRepo: sl()));
    sl.registerLazySingleton<PopularCase>(() =>PopularCase(baseMoviesRepo: sl()));
    sl.registerLazySingleton<TopRatedCase>(() =>TopRatedCase(baseMoviesRepo: sl()));
  }
}