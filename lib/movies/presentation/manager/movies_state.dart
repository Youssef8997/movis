part of 'movies_bloc.dart';

abstract class MoviesState extends Equatable {
  const MoviesState();
}

class MoviesInitial extends MoviesState {
  @override
  List<Object> get props => [];
}
class NowPlayingLoading extends MoviesState {
  @override
  List<Object> get props => [];
}
class NowPlayingSuccess extends MoviesState {
  @override
  List<Object> get props => [];
}
class NowPlayingFailed extends MoviesState {
  @override
  List<Object> get props => [];
}
class PopularLoading extends MoviesState {
  @override
  List<Object> get props => [];
}
class PopularSuccess extends MoviesState {
  @override
  List<Object> get props => [];
}
class PopularFailed extends MoviesState {
  @override
  List<Object> get props => [];
}
class TopRatedLoading extends MoviesState {
  @override
  List<Object> get props => [];
}
class TopRatedSuccess extends MoviesState {
  @override
  List<Object> get props => [];
}
class TopRatedFailed extends MoviesState {
  @override
  List<Object> get props => [];
}