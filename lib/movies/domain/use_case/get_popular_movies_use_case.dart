


import '../entities/movie_entity.dart';
import '../repoistory/base_movie_repoistory.dart';

class GetPopularMoviesUseCase {

  final BaseMovieRepository baseMovieRepository;

  GetPopularMoviesUseCase(this.baseMovieRepository);
  Future<List<MovieEntity>>  execute () async
  {
    return await baseMovieRepository.getPopularPlayingMovies();
  }
}