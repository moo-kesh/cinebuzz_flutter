class TmdbImageUtils {
  static const String _baseUrl = 'https://image.tmdb.org/t/p/';

  /// Builds the full URL for a TMDB poster image.
  /// [path] is the image path returned by TMDB API.
  /// [size] is the desired image size, defaulting to w500.
  static String buildPosterUrl(
    String path, {
    TmdbPosterImageSize size = TmdbPosterImageSize.w500,
  }) {
    return '$_baseUrl${size.value}$path';
  }

  /// Builds the full URL for a TMDB backdrop image.
  /// [path] is the image path returned by TMDB API.
  /// [size] is the desired image size, defaulting to w780.
  static String buildBackdropUrl(
    String path, {
    TmdbBackdropImageSize size = TmdbBackdropImageSize.w780,
  }) {
    return '$_baseUrl${size.value}$path';
  }
}

enum TmdbPosterImageSize {
  w92('w92'),
  w154('w154'),
  w185('w185'),
  w342('w342'),
  w500('w500'),
  w780('w780'),
  original('original');

  final String value;
  const TmdbPosterImageSize(this.value);
}

enum TmdbBackdropImageSize {
  w300('w300'),
  w780('w780'),
  w1280('w1280'),
  original('original');

  final String value;
  const TmdbBackdropImageSize(this.value);
}
