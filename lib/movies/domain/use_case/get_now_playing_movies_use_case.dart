


  import 'package:clean_arich_movie/movies/domain/entities/movie_entity.dart';
import 'package:clean_arich_movie/movies/domain/repoistory/base_movie_repoistory.dart';

class GetNowPlayingMoviesUseCase {

  final BaseMovieRepository baseMovieRepository;

  GetNowPlayingMoviesUseCase(this.baseMovieRepository);
   Future<List<MovieEntity>>  execute () async
  {
    return await baseMovieRepository.getNowPlaying();
  }
  }