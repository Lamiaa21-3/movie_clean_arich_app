import 'package:clean_arich_movie/movies/domain/entities/movie_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';

abstract class BaseMovieRepository {
  Future<Either<Failure,List<MovieEntity>>>  getNowPlaying();
  Future<Either<Failure,List<MovieEntity>>> getPopularPlayingMovies();
  Future<Either<Failure,List<MovieEntity>>> getTopRelatedMovies();

}