import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/movie_details.dart';

part 'movie_details_model.g.dart';

@JsonSerializable()
class MovieDetailsModel {
  MovieDetailsModel({
    required this.adult,
    required this.backdropPath,
    required this.belongsToCollection,
    required this.budget,
    required this.genres,
    required this.homepage,
    required this.id,
    required this.imdbId,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.productionCompanies,
    required this.productionCountries,
    required this.releaseDate,
    required this.revenue,
    required this.runtime,
    required this.spokenLanguages,
    required this.status,
    required this.tagline,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  final bool? adult;

  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;

  @JsonKey(name: 'belongs_to_collection')
  final BelongsToCollectionModel? belongsToCollection;
  final int? budget;
  final List<GenreModel>? genres;
  final String? homepage;
  final int? id;

  @JsonKey(name: 'imdb_id')
  final String? imdbId;

  @JsonKey(name: 'origin_country')
  final List<String>? originCountry;

  @JsonKey(name: 'original_language')
  final String? originalLanguage;

  @JsonKey(name: 'original_title')
  final String? originalTitle;
  final String? overview;
  final double? popularity;

  @JsonKey(name: 'poster_path')
  final String? posterPath;

  @JsonKey(name: 'production_companies')
  final List<ProductionCompanyModel>? productionCompanies;

  @JsonKey(name: 'production_countries')
  final List<ProductionCountryModel>? productionCountries;

  @JsonKey(name: 'release_date')
  final DateTime? releaseDate;
  final int? revenue;
  final int? runtime;

  @JsonKey(name: 'spoken_languages')
  final List<SpokenLanguageModel>? spokenLanguages;
  final String? status;
  final String? tagline;
  final String? title;
  final bool? video;

  @JsonKey(name: 'vote_average')
  final double? voteAverage;

  @JsonKey(name: 'vote_count')
  final int? voteCount;

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailsModelToJson(this);

  MovieDetails toEntity() {
    return MovieDetails(
      id: id ?? 0,
      title: title ?? '',
      overview: overview ?? '',
      posterPath: posterPath,
      backdropPath: backdropPath,
      voteAverage: voteAverage ?? 0.0,
      voteCount: voteCount ?? 0,
      releaseDate: releaseDate?.toIso8601String() ?? '',
      runtime: runtime ?? 0,
      genres:
          genres
              ?.map((genre) => Genre(id: genre.id ?? 0, name: genre.name ?? ''))
              .toList() ??
          [],
      status: status ?? '',
      tagline: tagline,
      budget: budget ?? 0,
      revenue: revenue ?? 0,
    );
  }
}

@JsonSerializable()
class BelongsToCollectionModel {
  BelongsToCollectionModel({
    required this.id,
    required this.name,
    required this.posterPath,
    required this.backdropPath,
  });

  final int? id;
  final String? name;

  @JsonKey(name: 'poster_path')
  final String? posterPath;

  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;

  factory BelongsToCollectionModel.fromJson(Map<String, dynamic> json) =>
      _$BelongsToCollectionModelFromJson(json);

  Map<String, dynamic> toJson() => _$BelongsToCollectionModelToJson(this);
}

@JsonSerializable()
class GenreModel {
  GenreModel({required this.id, required this.name});

  final int? id;
  final String? name;

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);

  Map<String, dynamic> toJson() => _$GenreModelToJson(this);
}

@JsonSerializable()
class ProductionCompanyModel {
  ProductionCompanyModel({
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originCountry,
  });

  final int? id;

  @JsonKey(name: 'logo_path')
  final String? logoPath;
  final String? name;

  @JsonKey(name: 'origin_country')
  final String? originCountry;

  factory ProductionCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCompanyModelToJson(this);
}

@JsonSerializable()
class ProductionCountryModel {
  ProductionCountryModel({required this.iso31661, required this.name});

  @JsonKey(name: 'iso_3166_1')
  final String? iso31661;
  final String? name;

  factory ProductionCountryModel.fromJson(Map<String, dynamic> json) =>
      _$ProductionCountryModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCountryModelToJson(this);
}

@JsonSerializable()
class SpokenLanguageModel {
  SpokenLanguageModel({
    required this.englishName,
    required this.iso6391,
    required this.name,
  });

  @JsonKey(name: 'english_name')
  final String? englishName;

  @JsonKey(name: 'iso_639_1')
  final String? iso6391;
  final String? name;

  factory SpokenLanguageModel.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguageModelFromJson(json);

  Map<String, dynamic> toJson() => _$SpokenLanguageModelToJson(this);
}
