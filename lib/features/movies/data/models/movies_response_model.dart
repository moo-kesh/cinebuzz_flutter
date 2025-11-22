import 'package:json_annotation/json_annotation.dart';

import 'movie_model.dart';

part 'movies_response_model.g.dart';

@JsonSerializable()
class MoviesResponseModel {
  final List<MovieModel> results;
  final int page;
  @JsonKey(name: 'total_results')
  final int totalResults;
  @JsonKey(name: 'total_pages')
  final int totalPages;

  MoviesResponseModel({
    required this.results,
    required this.page,
    required this.totalResults,
    required this.totalPages,
  });

  factory MoviesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MoviesResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$MoviesResponseModelToJson(this);
}
