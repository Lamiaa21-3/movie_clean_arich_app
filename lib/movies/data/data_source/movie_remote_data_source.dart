import 'package:clean_arich_movie/core/error/exeption.dart';
import 'package:clean_arich_movie/core/network/error_message_model.dart';
import 'package:clean_arich_movie/core/network/server_app_constants.dart';
import 'package:clean_arich_movie/movies/data/models/movie_model.dart';
import 'package:dio/dio.dart';

  abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlayingMovie();
  Future<List<MovieModel>> getPopularMovie();
  Future<List<MovieModel>> getTopReleatedMovie();

}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  Future<List<MovieModel>> getNowPlayingMovie() async
  {
    final response = await Dio().get(ServerApiConstance.nowPlayingMoviesPath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['result'] as List).map((e) =>
          MovieModel.fromJson(e),
      ));

    }
    else {
      throw ServerException(errorMessageModel: ErrorMessageModel.fromJson(response.data),);
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovie()   async
  {
    final response = await Dio().get(ServerApiConstance.popularMoviesPath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['result'] as List).map((e) =>
          MovieModel.fromJson(e),
      ));

    }
    else {
      throw ServerException(errorMessageModel: ErrorMessageModel.fromJson(response.data),);
    }
  }

  @override
  Future<List<MovieModel>> getTopReleatedMovie()  async {
    final response = await Dio().get(ServerApiConstance.topRatedMoviesPath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['result'] as List).map((e) =>
          MovieModel.fromJson(e),
      ));

    }
    else {
      throw ServerException(errorMessageModel: ErrorMessageModel.fromJson(response.data),);
    }
  }
}