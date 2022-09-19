import 'package:movis/movies/domain/entities/movies_ent.dart';

class MoviesModel extends Movies {
  const MoviesModel(
      {required super.photo,
      required super.title,
      required super.overView,
      required super.voteAverage,
      required super.id,
      required super.date});
 factory MoviesModel.fromJson(Map<String,dynamic>json)=>MoviesModel(
  id: json["id"],
   title: json["title"],
   date: json["release_date"],
   photo:  json["backdrop_path"],
  overView: json["overview"],
  voteAverage: json["vote_average"].toDouble(),

);
}
