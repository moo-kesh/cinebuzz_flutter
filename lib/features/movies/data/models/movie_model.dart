import 'package:cinebuzz_flutter/features/movies/domain/entities/movie.dart';
import 'package:hive_ce/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class MovieModel {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String? title;
  @JsonKey(name: 'original_title')
  @HiveField(2)
  final String? originalTitle;
  @HiveField(3)
  final String? overview;
  @JsonKey(name: 'poster_path')
  @HiveField(4)
  final String? posterPath;
  @JsonKey(name: 'backdrop_path')
  @HiveField(5)
  final String? backdropPath;
  @JsonKey(name: 'release_date')
  @HiveField(6)
  final String? releaseDate;
  @JsonKey(name: 'vote_average')
  @HiveField(7)
  final double? voteAverage;
  @JsonKey(name: 'vote_count')
  @HiveField(8)
  final int? voteCount;
  @HiveField(9)
  final double? popularity;
  @HiveField(10)
  final bool? adult;
  @JsonKey(name: 'genre_ids')
  @HiveField(11)
  final List<int>? genreIds;
  @JsonKey(name: 'original_language')
  @HiveField(12)
  final String? originalLanguage;
  @HiveField(13)
  final bool? video;
  @JsonKey(name: 'media_type')
  @HiveField(14)
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
