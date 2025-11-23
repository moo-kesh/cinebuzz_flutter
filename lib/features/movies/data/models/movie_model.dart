import 'package:cinebuzz_flutter/features/movies/domain/entities/movie.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable()
class MovieModel {
  final int id;
  final String? title;
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  final String? overview;
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @JsonKey(name: 'vote_count')
  final int? voteCount;
  final double? popularity;
  final bool? adult;
  @JsonKey(name: 'genre_ids')
  final List<int>? genreIds;
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  final bool? video;
  @JsonKey(name: 'media_type')
  final String? mediaType;

  const MovieModel({
    required this.id,
    this.title,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.backdropPath,
    this.releaseDate,
    this.voteAverage,
    this.voteCount,
    this.popularity,
    this.adult,
    this.genreIds,
    this.originalLanguage,
    this.video,
    this.mediaType,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieModelToJson(this);

  Movie toEntity() {
    return Movie(
      id: id,
      title: title ?? '',
      originalTitle: originalTitle ?? '',
      overview: overview ?? '',
      posterPath: posterPath,
      backdropPath: backdropPath,
      releaseDate: releaseDate,
      voteAverage: voteAverage ?? 0.0,
      voteCount: voteCount ?? 0,
      popularity: popularity ?? 0.0,
      adult: adult ?? false,
      genreIds: List<int>.from(genreIds ?? []),
      originalLanguage: originalLanguage ?? 'en',
      video: video ?? false,
      mediaType: mediaType,
    );
  }
}
