import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String originalTitle;
  final String overview;
  final String? posterPath;
  final String? backdropPath;
  final String? releaseDate;
  final double voteAverage;
  final int voteCount;
  final double popularity;
  final bool adult;
  final List<int> genreIds;
  final String originalLanguage;
  final bool video;
  final String? mediaType;

  const Movie({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.voteAverage,
    required this.voteCount,
    required this.popularity,
    required this.adult,
    required this.genreIds,
    required this.originalLanguage,
    required this.video,
    required this.mediaType,
    required this.overview,
    this.posterPath,
    this.backdropPath,
    this.releaseDate,
  });

  @override
  List<Object?> get props => [
    id,
    title,
    originalTitle,
    overview,
    posterPath,
    backdropPath,
    releaseDate,
    voteAverage,
    voteCount,
    popularity,
    adult,
    genreIds,
    originalLanguage,
    video,
    mediaType,
  ];
}
