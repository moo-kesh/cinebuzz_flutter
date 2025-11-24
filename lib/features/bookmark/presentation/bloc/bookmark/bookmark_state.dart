part of 'bookmark_cubit.dart';

@freezed
abstract class BookmarkState with _$BookmarkState {
  const factory BookmarkState({
    @Default(false) bool isBookmarked,
    @Default(false) bool isLoading,
    String? message,
  }) = _BookmarkState;
}
