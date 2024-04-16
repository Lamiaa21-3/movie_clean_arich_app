import 'package:clean_arich_movie/movies/domain/entities/movie_entity.dart';

abstract class BaseMovieRepository {
  Future<List<MovieEntity>> getNowPlaying();
  Future<List<MovieEntity>> getPopularPlayingMovies();
  Future<List<MovieEntity>> getTopRelatedMovies();

}