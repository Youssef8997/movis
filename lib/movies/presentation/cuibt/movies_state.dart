part of 'movies_cubit.dart';

@immutable
abstract class MoviesState {}

class MoviesInitial extends MoviesState {}
class NowPlayingLoading extends MoviesState {}
class NowPlayingError extends MoviesState {}
class NowPlayingSuccess extends MoviesState {}
class PopularLoading extends MoviesState {}
class PopularError extends MoviesState {}
class PopularSuccess extends MoviesState {}
class TopRatedLoading extends MoviesState {}
class TopRatedError extends MoviesState {}
class TopRatedSuccess extends MoviesState {}