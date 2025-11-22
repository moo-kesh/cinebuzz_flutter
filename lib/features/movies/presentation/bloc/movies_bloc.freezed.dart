// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MoviesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoviesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MoviesEvent()';
}


}

/// @nodoc
class $MoviesEventCopyWith<$Res>  {
$MoviesEventCopyWith(MoviesEvent _, $Res Function(MoviesEvent) __);
}


/// Adds pattern-matching-related methods to [MoviesEvent].
extension MoviesEventPatterns on MoviesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetTrendingMoviesEvent value)?  getTrendingMovies,TResult Function( GetNowPlayingMoviesEvent value)?  getNowPlayingMovies,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetTrendingMoviesEvent() when getTrendingMovies != null:
return getTrendingMovies(_that);case GetNowPlayingMoviesEvent() when getNowPlayingMovies != null:
return getNowPlayingMovies(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetTrendingMoviesEvent value)  getTrendingMovies,required TResult Function( GetNowPlayingMoviesEvent value)  getNowPlayingMovies,}){
final _that = this;
switch (_that) {
case GetTrendingMoviesEvent():
return getTrendingMovies(_that);case GetNowPlayingMoviesEvent():
return getNowPlayingMovies(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetTrendingMoviesEvent value)?  getTrendingMovies,TResult? Function( GetNowPlayingMoviesEvent value)?  getNowPlayingMovies,}){
final _that = this;
switch (_that) {
case GetTrendingMoviesEvent() when getTrendingMovies != null:
return getTrendingMovies(_that);case GetNowPlayingMoviesEvent() when getNowPlayingMovies != null:
return getNowPlayingMovies(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getTrendingMovies,TResult Function()?  getNowPlayingMovies,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetTrendingMoviesEvent() when getTrendingMovies != null:
return getTrendingMovies();case GetNowPlayingMoviesEvent() when getNowPlayingMovies != null:
return getNowPlayingMovies();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getTrendingMovies,required TResult Function()  getNowPlayingMovies,}) {final _that = this;
switch (_that) {
case GetTrendingMoviesEvent():
return getTrendingMovies();case GetNowPlayingMoviesEvent():
return getNowPlayingMovies();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getTrendingMovies,TResult? Function()?  getNowPlayingMovies,}) {final _that = this;
switch (_that) {
case GetTrendingMoviesEvent() when getTrendingMovies != null:
return getTrendingMovies();case GetNowPlayingMoviesEvent() when getNowPlayingMovies != null:
return getNowPlayingMovies();case _:
  return null;

}
}

}

/// @nodoc


class GetTrendingMoviesEvent implements MoviesEvent {
  const GetTrendingMoviesEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTrendingMoviesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MoviesEvent.getTrendingMovies()';
}


}




/// @nodoc


class GetNowPlayingMoviesEvent implements MoviesEvent {
  const GetNowPlayingMoviesEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNowPlayingMoviesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MoviesEvent.getNowPlayingMovies()';
}


}




/// @nodoc
mixin _$MoviesState {

 MoviesStatus get status; List get nowPlayingMovies; List get trendingMovies; String? get errorMessage;
/// Create a copy of MoviesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoviesStateCopyWith<MoviesState> get copyWith => _$MoviesStateCopyWithImpl<MoviesState>(this as MoviesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoviesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.nowPlayingMovies, nowPlayingMovies)&&const DeepCollectionEquality().equals(other.trendingMovies, trendingMovies)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(nowPlayingMovies),const DeepCollectionEquality().hash(trendingMovies),errorMessage);

@override
String toString() {
  return 'MoviesState(status: $status, nowPlayingMovies: $nowPlayingMovies, trendingMovies: $trendingMovies, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MoviesStateCopyWith<$Res>  {
  factory $MoviesStateCopyWith(MoviesState value, $Res Function(MoviesState) _then) = _$MoviesStateCopyWithImpl;
@useResult
$Res call({
 MoviesStatus status, List nowPlayingMovies, List trendingMovies, String? errorMessage
});




}
/// @nodoc
class _$MoviesStateCopyWithImpl<$Res>
    implements $MoviesStateCopyWith<$Res> {
  _$MoviesStateCopyWithImpl(this._self, this._then);

  final MoviesState _self;
  final $Res Function(MoviesState) _then;

/// Create a copy of MoviesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? nowPlayingMovies = null,Object? trendingMovies = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MoviesStatus,nowPlayingMovies: null == nowPlayingMovies ? _self.nowPlayingMovies : nowPlayingMovies // ignore: cast_nullable_to_non_nullable
as List,trendingMovies: null == trendingMovies ? _self.trendingMovies : trendingMovies // ignore: cast_nullable_to_non_nullable
as List,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MoviesState].
extension MoviesStatePatterns on MoviesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoviesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoviesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoviesState value)  $default,){
final _that = this;
switch (_that) {
case _MoviesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoviesState value)?  $default,){
final _that = this;
switch (_that) {
case _MoviesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MoviesStatus status,  List nowPlayingMovies,  List trendingMovies,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoviesState() when $default != null:
return $default(_that.status,_that.nowPlayingMovies,_that.trendingMovies,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MoviesStatus status,  List nowPlayingMovies,  List trendingMovies,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _MoviesState():
return $default(_that.status,_that.nowPlayingMovies,_that.trendingMovies,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MoviesStatus status,  List nowPlayingMovies,  List trendingMovies,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _MoviesState() when $default != null:
return $default(_that.status,_that.nowPlayingMovies,_that.trendingMovies,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MoviesState implements MoviesState {
  const _MoviesState({this.status = MoviesStatus.initial, final  List nowPlayingMovies = const [], final  List trendingMovies = const [], this.errorMessage}): _nowPlayingMovies = nowPlayingMovies,_trendingMovies = trendingMovies;
  

@override@JsonKey() final  MoviesStatus status;
 final  List _nowPlayingMovies;
@override@JsonKey() List get nowPlayingMovies {
  if (_nowPlayingMovies is EqualUnmodifiableListView) return _nowPlayingMovies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nowPlayingMovies);
}

 final  List _trendingMovies;
@override@JsonKey() List get trendingMovies {
  if (_trendingMovies is EqualUnmodifiableListView) return _trendingMovies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trendingMovies);
}

@override final  String? errorMessage;

/// Create a copy of MoviesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoviesStateCopyWith<_MoviesState> get copyWith => __$MoviesStateCopyWithImpl<_MoviesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoviesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._nowPlayingMovies, _nowPlayingMovies)&&const DeepCollectionEquality().equals(other._trendingMovies, _trendingMovies)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_nowPlayingMovies),const DeepCollectionEquality().hash(_trendingMovies),errorMessage);

@override
String toString() {
  return 'MoviesState(status: $status, nowPlayingMovies: $nowPlayingMovies, trendingMovies: $trendingMovies, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MoviesStateCopyWith<$Res> implements $MoviesStateCopyWith<$Res> {
  factory _$MoviesStateCopyWith(_MoviesState value, $Res Function(_MoviesState) _then) = __$MoviesStateCopyWithImpl;
@override @useResult
$Res call({
 MoviesStatus status, List nowPlayingMovies, List trendingMovies, String? errorMessage
});




}
/// @nodoc
class __$MoviesStateCopyWithImpl<$Res>
    implements _$MoviesStateCopyWith<$Res> {
  __$MoviesStateCopyWithImpl(this._self, this._then);

  final _MoviesState _self;
  final $Res Function(_MoviesState) _then;

/// Create a copy of MoviesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? nowPlayingMovies = null,Object? trendingMovies = null,Object? errorMessage = freezed,}) {
  return _then(_MoviesState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MoviesStatus,nowPlayingMovies: null == nowPlayingMovies ? _self._nowPlayingMovies : nowPlayingMovies // ignore: cast_nullable_to_non_nullable
as List,trendingMovies: null == trendingMovies ? _self._trendingMovies : trendingMovies // ignore: cast_nullable_to_non_nullable
as List,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
