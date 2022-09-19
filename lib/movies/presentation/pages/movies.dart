import 'package:flutter/material.dart';
import 'package:movis/movies/data/data_sources/remote_data_source.dart';
import 'package:movis/movies/data/repositories/movies_repo_imp.dart';
import 'package:movis/movies/domain/repositories/base_movies_repo.dart';

import '../../domain/use_cases/now_playing_case.dart';

class MoviesScreen extends StatefulWidget {

  @override
  _MoviesScreenState createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  @override
  void initState() {
  _getdata();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

void _getdata() async {
  BaseRemoteDataSource baseRemoteDataSource=RemoteDataSource();
  BaseMoviesRepo baseMoviesRepo=MoviesRepoImpl(baseRemoteDataSource: baseRemoteDataSource);
  final rasult=await GetNowPlaying(baseMoviesRepo: baseMoviesRepo).call();
  print(rasult.isLeft());
}
