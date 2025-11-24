part of 'watchlist_bloc.dart';

enum WatchlistStatus { initial, loading, loaded, error }

@freezed
abstract class WatchlistState with _$WatchlistState {
  const factory WatchlistState({
    @Default(WatchlistStatus.initial) WatchlistStatus status,
    @Default([]) List<Movie> movies,
    String? message,
  }) = _WatchlistState;
}
