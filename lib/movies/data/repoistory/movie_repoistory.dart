import 'package:clean_arich_movie/core/error/exeption.dart';
import 'package:clean_arich_movie/core/error/failure.dart';
import 'package:clean_arich_movie/movies/data/data_source/movie_remote_data_source.dart';
import 'package:clean_arich_movie/movies/domain/entities/movie_entity.dart';
import 'package:clean_arich_movie/movies/domain/repoistory/base_movie_repoistory.dart';
import 'package:dartz/dartz.dart';

class MovieRepository extends BaseMovieRepository {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MovieRepository(this.baseMovieRemoteDataSource);

  @override
  Future<Either<Failure, List<MovieEntity>>> getNowPlaying() async {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovie();
    try {
      return right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getPopularPlayingMovies() async {
    final result = await baseMovieRemoteDataSource.getPopularMovie();
    try {
      return right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getTopRelatedMovies() async{
    final result = await baseMovieRemoteDataSource.getTopReleatedMovie();
    try {
      return right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
  }
}
