import 'package:dio/dio.dart';
import 'package:movis/core/exception/exception.dart';
import 'package:movis/core/utls/app_constant.dart';
import 'package:movis/movies/data/models/movies_model.dart';

abstract class BaseRemoteDataSource{
  Future<List<MoviesModel>> getPlayingNow();
  Future<List<MoviesModel>> getTopRated();
  Future<List<MoviesModel>> getPopular();
}
class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<List<MoviesModel>> getPlayingNow()async {
var response= await Dio().get("${AppConstant.baseUrl}/movie/now_playing?api_key=${AppConstant.apiKey}");

if(response.statusCode==200)
  {
    return List<MoviesModel>.from((response.data["results"] as List).map((e) => MoviesModel.fromJson(e)));
  }
else {
  throw ServerException(msg: response.data["message"]);
}
  }

  @override
  Future<List<MoviesModel>> getPopular()async {
   var response=await Dio().get("${AppConstant.baseUrl}/movie/popular?api_key=${AppConstant.apiKey}");
   if(response.statusCode==200)
   {
     return List<MoviesModel>.from((response.data["results"] as List).map((e) => MoviesModel.fromJson(e)));
   }
   else {
     throw ServerException(msg: response.data["message"]);
   }
  }

  @override
  Future<List<MoviesModel>> getTopRated() async {
    var response=await Dio().get("${AppConstant.baseUrl}/movie/top_rated?api_key=${AppConstant.apiKey}");
    if(response.statusCode==200)
    {
      return List<MoviesModel>.from((response.data["results"] as List).map((e) => MoviesModel.fromJson(e)));
    }
    else {
      throw ServerException(msg: response.data["message"]);
    }
  }

}