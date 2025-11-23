class MovieDetails {
  final int id;
  final String title;
  final String overview;
  final String? posterPath;
  final String? backdropPath;
  final double voteAverage;
  final int voteCount;
  final String releaseDate;
  final int runtime;
  final List<Genre> genres;
  final String status;
  final String? tagline;
  final int budget;
  final int revenue;

  const MovieDetails({
    required this.id,
    required this.title,
    required this.overview,
    this.posterPath,
    this.backdropPath,
    required this.voteAverage,
    required this.voteCount,
    required this.releaseDate,
    required this.runtime,
    required this.genres,
    required this.status,
    this.tagline,
    required this.budget,
    required this.revenue,
  });
}

class Genre {
  final int id;
  final String name;

  const Genre({required this.id, required this.name});
}
