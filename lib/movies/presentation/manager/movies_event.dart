part of 'movies_bloc.dart';

abstract class MoviesEvent extends Equatable {
  const MoviesEvent();

  @override
  List<Object> get props => [];
}
class GetNowPlaying extends MoviesEvent{}
class GetTopRating extends MoviesEvent{}
class GetPopular extends MoviesEvent{}
