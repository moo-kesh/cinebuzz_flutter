// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchMoviesEvent {

 String get query;
/// Create a copy of SearchMoviesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchMoviesEventCopyWith<SearchMoviesEvent> get copyWith => _$SearchMoviesEventCopyWithImpl<SearchMoviesEvent>(this as SearchMoviesEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchMoviesEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SearchMoviesEvent(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchMoviesEventCopyWith<$Res>  {
  factory $SearchMoviesEventCopyWith(SearchMoviesEvent value, $Res Function(SearchMoviesEvent) _then) = _$SearchMoviesEventCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchMoviesEventCopyWithImpl<$Res>
    implements $SearchMoviesEventCopyWith<$Res> {
  _$SearchMoviesEventCopyWithImpl(this._self, this._then);

  final SearchMoviesEvent _self;
  final $Res Function(SearchMoviesEvent) _then;

/// Create a copy of SearchMoviesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchMoviesEvent].
extension SearchMoviesEventPatterns on SearchMoviesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchMoviesQueryChanged value)?  queryChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchMoviesQueryChanged() when queryChanged != null:
return queryChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchMoviesQueryChanged value)  queryChanged,}){
final _that = this;
switch (_that) {
case SearchMoviesQueryChanged():
return queryChanged(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchMoviesQueryChanged value)?  queryChanged,}){
final _that = this;
switch (_that) {
case SearchMoviesQueryChanged() when queryChanged != null:
return queryChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String query)?  queryChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchMoviesQueryChanged() when queryChanged != null:
return queryChanged(_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String query)  queryChanged,}) {final _that = this;
switch (_that) {
case SearchMoviesQueryChanged():
return queryChanged(_that.query);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String query)?  queryChanged,}) {final _that = this;
switch (_that) {
case SearchMoviesQueryChanged() when queryChanged != null:
return queryChanged(_that.query);case _:
  return null;

}
}

}

/// @nodoc


class SearchMoviesQueryChanged implements SearchMoviesEvent {
  const SearchMoviesQueryChanged(this.query);
  

@override final  String query;

/// Create a copy of SearchMoviesEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchMoviesQueryChangedCopyWith<SearchMoviesQueryChanged> get copyWith => _$SearchMoviesQueryChangedCopyWithImpl<SearchMoviesQueryChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchMoviesQueryChanged&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SearchMoviesEvent.queryChanged(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchMoviesQueryChangedCopyWith<$Res> implements $SearchMoviesEventCopyWith<$Res> {
  factory $SearchMoviesQueryChangedCopyWith(SearchMoviesQueryChanged value, $Res Function(SearchMoviesQueryChanged) _then) = _$SearchMoviesQueryChangedCopyWithImpl;
@override @useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchMoviesQueryChangedCopyWithImpl<$Res>
    implements $SearchMoviesQueryChangedCopyWith<$Res> {
  _$SearchMoviesQueryChangedCopyWithImpl(this._self, this._then);

  final SearchMoviesQueryChanged _self;
  final $Res Function(SearchMoviesQueryChanged) _then;

/// Create a copy of SearchMoviesEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SearchMoviesQueryChanged(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SearchMoviesState {

 SearchMoviesStatus get status; List<Movie> get movies; String? get errorMessage;
/// Create a copy of SearchMoviesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchMoviesStateCopyWith<SearchMoviesState> get copyWith => _$SearchMoviesStateCopyWithImpl<SearchMoviesState>(this as SearchMoviesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchMoviesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.movies, movies)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(movies),errorMessage);

@override
String toString() {
  return 'SearchMoviesState(status: $status, movies: $movies, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SearchMoviesStateCopyWith<$Res>  {
  factory $SearchMoviesStateCopyWith(SearchMoviesState value, $Res Function(SearchMoviesState) _then) = _$SearchMoviesStateCopyWithImpl;
@useResult
$Res call({
 SearchMoviesStatus status, List<Movie> movies, String? errorMessage
});




}
/// @nodoc
class _$SearchMoviesStateCopyWithImpl<$Res>
    implements $SearchMoviesStateCopyWith<$Res> {
  _$SearchMoviesStateCopyWithImpl(this._self, this._then);

  final SearchMoviesState _self;
  final $Res Function(SearchMoviesState) _then;

/// Create a copy of SearchMoviesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? movies = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SearchMoviesStatus,movies: null == movies ? _self.movies : movies // ignore: cast_nullable_to_non_nullable
as List<Movie>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchMoviesState].
extension SearchMoviesStatePatterns on SearchMoviesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchMoviesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchMoviesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchMoviesState value)  $default,){
final _that = this;
switch (_that) {
case _SearchMoviesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchMoviesState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchMoviesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SearchMoviesStatus status,  List<Movie> movies,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchMoviesState() when $default != null:
return $default(_that.status,_that.movies,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SearchMoviesStatus status,  List<Movie> movies,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _SearchMoviesState():
return $default(_that.status,_that.movies,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SearchMoviesStatus status,  List<Movie> movies,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _SearchMoviesState() when $default != null:
return $default(_that.status,_that.movies,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _SearchMoviesState implements SearchMoviesState {
  const _SearchMoviesState({this.status = SearchMoviesStatus.initial, final  List<Movie> movies = const [], this.errorMessage}): _movies = movies;
  

@override@JsonKey() final  SearchMoviesStatus status;
 final  List<Movie> _movies;
@override@JsonKey() List<Movie> get movies {
  if (_movies is EqualUnmodifiableListView) return _movies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_movies);
}

@override final  String? errorMessage;

/// Create a copy of SearchMoviesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchMoviesStateCopyWith<_SearchMoviesState> get copyWith => __$SearchMoviesStateCopyWithImpl<_SearchMoviesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchMoviesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._movies, _movies)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_movies),errorMessage);

@override
String toString() {
  return 'SearchMoviesState(status: $status, movies: $movies, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$SearchMoviesStateCopyWith<$Res> implements $SearchMoviesStateCopyWith<$Res> {
  factory _$SearchMoviesStateCopyWith(_SearchMoviesState value, $Res Function(_SearchMoviesState) _then) = __$SearchMoviesStateCopyWithImpl;
@override @useResult
$Res call({
 SearchMoviesStatus status, List<Movie> movies, String? errorMessage
});




}
/// @nodoc
class __$SearchMoviesStateCopyWithImpl<$Res>
    implements _$SearchMoviesStateCopyWith<$Res> {
  __$SearchMoviesStateCopyWithImpl(this._self, this._then);

  final _SearchMoviesState _self;
  final $Res Function(_SearchMoviesState) _then;

/// Create a copy of SearchMoviesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? movies = null,Object? errorMessage = freezed,}) {
  return _then(_SearchMoviesState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SearchMoviesStatus,movies: null == movies ? _self._movies : movies // ignore: cast_nullable_to_non_nullable
as List<Movie>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
