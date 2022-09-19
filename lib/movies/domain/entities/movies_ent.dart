import 'package:equatable/equatable.dart';

class Movies extends Equatable {
  final String photo;

  final String title;

  final String overView;

  final double voteAverage;

  final int id;
  final String date;
  const Movies(
      {required this.photo,
      required this.title,
      required this.overView,
      required this.voteAverage,
      required this.id,
      required this.date});

  @override
  List<Object> get props => [photo, title, overView, voteAverage, id, date];
}
