import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:movis/movies/domain/use_cases/top_rated_case.dart';
import '../../../core/servece/servece.dart';
import '../../domain/entities/movies_ent.dart';
import '../../domain/use_cases/now_playing_case.dart';
import '../../domain/use_cases/popular_case.dart';
part 'movies_state.dart';

class MoviesCubit extends Cubit<MoviesState> {
  MoviesCubit() : super(MoviesInitial());
  static MoviesCubit get(context) => BlocProvider.of(context);
  List<Movies> nowPlayingMovies=[];
List<Movies> popularMovies=[];
List<Movies> topRatedMovies=[];
  void getNowPlaying()async  {
    emit(NowPlayingLoading());
    var result=await GetNowPlaying(baseMoviesRepo: sl()).call();
    result.fold((l) {
      emit(NowPlayingError());
    }, (r) {
      nowPlayingMovies=r;
      emit(NowPlayingSuccess());
    });

  }
  void getPopular()async  {
    emit(PopularLoading());
    var result=await PopularCase(baseMoviesRepo: sl()).call();
    result.fold((l) {
      emit(PopularError());
    }, (r) {
      popularMovies=r;
      emit(PopularSuccess());
    });

  }
  void getTopRated()async  {
    emit(TopRatedLoading());
    var result=await TopRatedCase(baseMoviesRepo: sl()).call();
    result.fold((l) {
      emit(TopRatedError(
      ));
    }, (r) {
      topRatedMovies=r;
      emit(TopRatedSuccess());
    });

  }

}