


  import 'package:clean_arich_movie/movies/domain/entities/movie_entity.dart';
import 'package:clean_arich_movie/movies/domain/repoistory/base_movie_repoistory.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';

class GetNowPlayingMoviesUseCase {

  final BaseMovieRepository baseMovieRepository;

  GetNowPlayingMoviesUseCase(this.baseMovieRepository);
  Future<Either<Failure,List<MovieEntity>>>   execute () async
  {
    return await baseMovieRepository.getNowPlaying();
  }
  }