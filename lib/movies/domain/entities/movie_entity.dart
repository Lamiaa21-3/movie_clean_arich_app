import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final int id;

  final String title;
  final String backDropPath;
  final String overView;
  final List<int> generalId;
  final double voteAverage;
  final double releasedDate;

   const MovieEntity({
     required this.id,
     required this.title,
     required this.backDropPath,
     required this.overView,
     required this.generalId,
     required this.voteAverage,
     required this.releasedDate,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        title,
        backDropPath,
        overView,
        generalId,
        voteAverage,
    releasedDate,
      ];
}
