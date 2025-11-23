// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MovieDetailsEvent {

 int get movieId;
/// Create a copy of MovieDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDetailsEventCopyWith<MovieDetailsEvent> get copyWith => _$MovieDetailsEventCopyWithImpl<MovieDetailsEvent>(this as MovieDetailsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetailsEvent&&(identical(other.movieId, movieId) || other.movieId == movieId));
}


@override
int get hashCode => Object.hash(runtimeType,movieId);

@override
String toString() {
  return 'MovieDetailsEvent(movieId: $movieId)';
}


}

/// @nodoc
abstract mixin class $MovieDetailsEventCopyWith<$Res>  {
  factory $MovieDetailsEventCopyWith(MovieDetailsEvent value, $Res Function(MovieDetailsEvent) _then) = _$MovieDetailsEventCopyWithImpl;
@useResult
$Res call({
 int movieId
});




}
/// @nodoc
class _$MovieDetailsEventCopyWithImpl<$Res>
    implements $MovieDetailsEventCopyWith<$Res> {
  _$MovieDetailsEventCopyWithImpl(this._self, this._then);

  final MovieDetailsEvent _self;
  final $Res Function(MovieDetailsEvent) _then;

/// Create a copy of MovieDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? movieId = null,}) {
  return _then(_self.copyWith(
movieId: null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieDetailsEvent].
extension MovieDetailsEventPatterns on MovieDetailsEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetMovieDetailsEvent value)?  getMovieDetails,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetMovieDetailsEvent() when getMovieDetails != null:
return getMovieDetails(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetMovieDetailsEvent value)  getMovieDetails,}){
final _that = this;
switch (_that) {
case GetMovieDetailsEvent():
return getMovieDetails(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetMovieDetailsEvent value)?  getMovieDetails,}){
final _that = this;
switch (_that) {
case GetMovieDetailsEvent() when getMovieDetails != null:
return getMovieDetails(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int movieId)?  getMovieDetails,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetMovieDetailsEvent() when getMovieDetails != null:
return getMovieDetails(_that.movieId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int movieId)  getMovieDetails,}) {final _that = this;
switch (_that) {
case GetMovieDetailsEvent():
return getMovieDetails(_that.movieId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int movieId)?  getMovieDetails,}) {final _that = this;
switch (_that) {
case GetMovieDetailsEvent() when getMovieDetails != null:
return getMovieDetails(_that.movieId);case _:
  return null;

}
}

}

/// @nodoc


class GetMovieDetailsEvent implements MovieDetailsEvent {
  const GetMovieDetailsEvent(this.movieId);
  

@override final  int movieId;

/// Create a copy of MovieDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMovieDetailsEventCopyWith<GetMovieDetailsEvent> get copyWith => _$GetMovieDetailsEventCopyWithImpl<GetMovieDetailsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMovieDetailsEvent&&(identical(other.movieId, movieId) || other.movieId == movieId));
}


@override
int get hashCode => Object.hash(runtimeType,movieId);

@override
String toString() {
  return 'MovieDetailsEvent.getMovieDetails(movieId: $movieId)';
}


}

/// @nodoc
abstract mixin class $GetMovieDetailsEventCopyWith<$Res> implements $MovieDetailsEventCopyWith<$Res> {
  factory $GetMovieDetailsEventCopyWith(GetMovieDetailsEvent value, $Res Function(GetMovieDetailsEvent) _then) = _$GetMovieDetailsEventCopyWithImpl;
@override @useResult
$Res call({
 int movieId
});




}
/// @nodoc
class _$GetMovieDetailsEventCopyWithImpl<$Res>
    implements $GetMovieDetailsEventCopyWith<$Res> {
  _$GetMovieDetailsEventCopyWithImpl(this._self, this._then);

  final GetMovieDetailsEvent _self;
  final $Res Function(GetMovieDetailsEvent) _then;

/// Create a copy of MovieDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? movieId = null,}) {
  return _then(GetMovieDetailsEvent(
null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MovieDetailsState {

 MovieDetailsStatus get status; MovieDetails? get movieDetails; String? get errorMessage;
/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDetailsStateCopyWith<MovieDetailsState> get copyWith => _$MovieDetailsStateCopyWithImpl<MovieDetailsState>(this as MovieDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.movieDetails, movieDetails) || other.movieDetails == movieDetails)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,movieDetails,errorMessage);

@override
String toString() {
  return 'MovieDetailsState(status: $status, movieDetails: $movieDetails, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MovieDetailsStateCopyWith<$Res>  {
  factory $MovieDetailsStateCopyWith(MovieDetailsState value, $Res Function(MovieDetailsState) _then) = _$MovieDetailsStateCopyWithImpl;
@useResult
$Res call({
 MovieDetailsStatus status, MovieDetails? movieDetails, String? errorMessage
});




}
/// @nodoc
class _$MovieDetailsStateCopyWithImpl<$Res>
    implements $MovieDetailsStateCopyWith<$Res> {
  _$MovieDetailsStateCopyWithImpl(this._self, this._then);

  final MovieDetailsState _self;
  final $Res Function(MovieDetailsState) _then;

/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? movieDetails = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MovieDetailsStatus,movieDetails: freezed == movieDetails ? _self.movieDetails : movieDetails // ignore: cast_nullable_to_non_nullable
as MovieDetails?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieDetailsState].
extension MovieDetailsStatePatterns on MovieDetailsState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieDetailsState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _MovieDetailsState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _MovieDetailsState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MovieDetailsStatus status,  MovieDetails? movieDetails,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieDetailsState() when $default != null:
return $default(_that.status,_that.movieDetails,_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MovieDetailsStatus status,  MovieDetails? movieDetails,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _MovieDetailsState():
return $default(_that.status,_that.movieDetails,_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MovieDetailsStatus status,  MovieDetails? movieDetails,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _MovieDetailsState() when $default != null:
return $default(_that.status,_that.movieDetails,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MovieDetailsState implements MovieDetailsState {
  const _MovieDetailsState({this.status = MovieDetailsStatus.initial, this.movieDetails, this.errorMessage});
  

@override@JsonKey() final  MovieDetailsStatus status;
@override final  MovieDetails? movieDetails;
@override final  String? errorMessage;

/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDetailsStateCopyWith<_MovieDetailsState> get copyWith => __$MovieDetailsStateCopyWithImpl<_MovieDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.movieDetails, movieDetails) || other.movieDetails == movieDetails)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,movieDetails,errorMessage);

@override
String toString() {
  return 'MovieDetailsState(status: $status, movieDetails: $movieDetails, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MovieDetailsStateCopyWith<$Res> implements $MovieDetailsStateCopyWith<$Res> {
  factory _$MovieDetailsStateCopyWith(_MovieDetailsState value, $Res Function(_MovieDetailsState) _then) = __$MovieDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 MovieDetailsStatus status, MovieDetails? movieDetails, String? errorMessage
});




}
/// @nodoc
class __$MovieDetailsStateCopyWithImpl<$Res>
    implements _$MovieDetailsStateCopyWith<$Res> {
  __$MovieDetailsStateCopyWithImpl(this._self, this._then);

  final _MovieDetailsState _self;
  final $Res Function(_MovieDetailsState) _then;

/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? movieDetails = freezed,Object? errorMessage = freezed,}) {
  return _then(_MovieDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MovieDetailsStatus,movieDetails: freezed == movieDetails ? _self.movieDetails : movieDetails // ignore: cast_nullable_to_non_nullable
as MovieDetails?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
