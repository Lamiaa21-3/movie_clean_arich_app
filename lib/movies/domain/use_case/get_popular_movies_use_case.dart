


import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/movie_entity.dart';
import '../repoistory/base_movie_repoistory.dart';

class GetPopularMoviesUseCase {

  final BaseMovieRepository baseMovieRepository;

  GetPopularMoviesUseCase(this.baseMovieRepository);
  Future<Either<Failure,List<MovieEntity>>>   execute () async
  {
    return await baseMovieRepository.getPopularPlayingMovies();
  }
}