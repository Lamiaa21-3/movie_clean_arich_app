






import '../entities/movie_entity.dart';
import '../repoistory/base_movie_repoistory.dart';

class GetTopReleatedMoviesUseCase {

  final BaseMovieRepository baseMovieRepository;

  GetTopReleatedMoviesUseCase(this.baseMovieRepository);
  Future<List<MovieEntity>>  execute () async
  {
    return await baseMovieRepository.getPopularPlayingMovies();
  }
}