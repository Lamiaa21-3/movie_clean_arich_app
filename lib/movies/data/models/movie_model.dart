import 'package:clean_arich_movie/movies/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  MovieModel(
      {required super.id,
      required super.title,
      required super.backDropPath,
      required super.overView,
      required super.generalId,
      required super.voteAverage,
      required super.releasedDate});
  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json['id'],
        title: json['title'],
        backDropPath: json['id'],
        overView: json['id'],
        generalId: List<int>.from(json['geneIds'].map((e)=>e)),
        voteAverage: json['id'],
        releasedDate: json['id'],
      );
}
