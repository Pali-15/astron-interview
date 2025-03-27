// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repository_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GithubRepositoryEvent {
  String get query => throw _privateConstructorUsedError;
  int get nextIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, int nextIndex) query,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, int nextIndex)? query,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, int nextIndex)? query,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GithubRepositoryQueryEvent value) query,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GithubRepositoryQueryEvent value)? query,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GithubRepositoryQueryEvent value)? query,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of GithubRepositoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GithubRepositoryEventCopyWith<GithubRepositoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepositoryEventCopyWith<$Res> {
  factory $GithubRepositoryEventCopyWith(GithubRepositoryEvent value,
          $Res Function(GithubRepositoryEvent) then) =
      _$GithubRepositoryEventCopyWithImpl<$Res, GithubRepositoryEvent>;
  @useResult
  $Res call({String query, int nextIndex});
}

/// @nodoc
class _$GithubRepositoryEventCopyWithImpl<$Res,
        $Val extends GithubRepositoryEvent>
    implements $GithubRepositoryEventCopyWith<$Res> {
  _$GithubRepositoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GithubRepositoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? nextIndex = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      nextIndex: null == nextIndex
          ? _value.nextIndex
          : nextIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GithubRepositoryQueryEventImplCopyWith<$Res>
    implements $GithubRepositoryEventCopyWith<$Res> {
  factory _$$GithubRepositoryQueryEventImplCopyWith(
          _$GithubRepositoryQueryEventImpl value,
          $Res Function(_$GithubRepositoryQueryEventImpl) then) =
      __$$GithubRepositoryQueryEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, int nextIndex});
}

/// @nodoc
class __$$GithubRepositoryQueryEventImplCopyWithImpl<$Res>
    extends _$GithubRepositoryEventCopyWithImpl<$Res,
        _$GithubRepositoryQueryEventImpl>
    implements _$$GithubRepositoryQueryEventImplCopyWith<$Res> {
  __$$GithubRepositoryQueryEventImplCopyWithImpl(
      _$GithubRepositoryQueryEventImpl _value,
      $Res Function(_$GithubRepositoryQueryEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GithubRepositoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? nextIndex = null,
  }) {
    return _then(_$GithubRepositoryQueryEventImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      nextIndex: null == nextIndex
          ? _value.nextIndex
          : nextIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GithubRepositoryQueryEventImpl implements GithubRepositoryQueryEvent {
  const _$GithubRepositoryQueryEventImpl(
      {required this.query, required this.nextIndex});

  @override
  final String query;
  @override
  final int nextIndex;

  @override
  String toString() {
    return 'GithubRepositoryEvent.query(query: $query, nextIndex: $nextIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubRepositoryQueryEventImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.nextIndex, nextIndex) ||
                other.nextIndex == nextIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, nextIndex);

  /// Create a copy of GithubRepositoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubRepositoryQueryEventImplCopyWith<_$GithubRepositoryQueryEventImpl>
      get copyWith => __$$GithubRepositoryQueryEventImplCopyWithImpl<
          _$GithubRepositoryQueryEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, int nextIndex) query,
  }) {
    return query(this.query, nextIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, int nextIndex)? query,
  }) {
    return query?.call(this.query, nextIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, int nextIndex)? query,
    required TResult orElse(),
  }) {
    if (query != null) {
      return query(this.query, nextIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GithubRepositoryQueryEvent value) query,
  }) {
    return query(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GithubRepositoryQueryEvent value)? query,
  }) {
    return query?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GithubRepositoryQueryEvent value)? query,
    required TResult orElse(),
  }) {
    if (query != null) {
      return query(this);
    }
    return orElse();
  }
}

abstract class GithubRepositoryQueryEvent implements GithubRepositoryEvent {
  const factory GithubRepositoryQueryEvent(
      {required final String query,
      required final int nextIndex}) = _$GithubRepositoryQueryEventImpl;

  @override
  String get query;
  @override
  int get nextIndex;

  /// Create a copy of GithubRepositoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GithubRepositoryQueryEventImplCopyWith<_$GithubRepositoryQueryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GithubRepositoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Repository> searchResult, int currentIndex,
            int maxIndex, String currentQuery)
        loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Repository> searchResult, int currentIndex,
            int maxIndex, String currentQuery)?
        loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Repository> searchResult, int currentIndex,
            int maxIndex, String currentQuery)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GithubRepositoryInitialState value) initial,
    required TResult Function(GithubRepositoryLoadingState value) loading,
    required TResult Function(GithubRepositoryLoadedState value) loaded,
    required TResult Function(GithubRepositoryErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GithubRepositoryInitialState value)? initial,
    TResult? Function(GithubRepositoryLoadingState value)? loading,
    TResult? Function(GithubRepositoryLoadedState value)? loaded,
    TResult? Function(GithubRepositoryErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GithubRepositoryInitialState value)? initial,
    TResult Function(GithubRepositoryLoadingState value)? loading,
    TResult Function(GithubRepositoryLoadedState value)? loaded,
    TResult Function(GithubRepositoryErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepositoryStateCopyWith<$Res> {
  factory $GithubRepositoryStateCopyWith(GithubRepositoryState value,
          $Res Function(GithubRepositoryState) then) =
      _$GithubRepositoryStateCopyWithImpl<$Res, GithubRepositoryState>;
}

/// @nodoc
class _$GithubRepositoryStateCopyWithImpl<$Res,
        $Val extends GithubRepositoryState>
    implements $GithubRepositoryStateCopyWith<$Res> {
  _$GithubRepositoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GithubRepositoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GithubRepositoryInitialStateImplCopyWith<$Res> {
  factory _$$GithubRepositoryInitialStateImplCopyWith(
          _$GithubRepositoryInitialStateImpl value,
          $Res Function(_$GithubRepositoryInitialStateImpl) then) =
      __$$GithubRepositoryInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GithubRepositoryInitialStateImplCopyWithImpl<$Res>
    extends _$GithubRepositoryStateCopyWithImpl<$Res,
        _$GithubRepositoryInitialStateImpl>
    implements _$$GithubRepositoryInitialStateImplCopyWith<$Res> {
  __$$GithubRepositoryInitialStateImplCopyWithImpl(
      _$GithubRepositoryInitialStateImpl _value,
      $Res Function(_$GithubRepositoryInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GithubRepositoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GithubRepositoryInitialStateImpl
    implements GithubRepositoryInitialState {
  const _$GithubRepositoryInitialStateImpl();

  @override
  String toString() {
    return 'GithubRepositoryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubRepositoryInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Repository> searchResult, int currentIndex,
            int maxIndex, String currentQuery)
        loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Repository> searchResult, int currentIndex,
            int maxIndex, String currentQuery)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Repository> searchResult, int currentIndex,
            int maxIndex, String currentQuery)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GithubRepositoryInitialState value) initial,
    required TResult Function(GithubRepositoryLoadingState value) loading,
    required TResult Function(GithubRepositoryLoadedState value) loaded,
    required TResult Function(GithubRepositoryErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GithubRepositoryInitialState value)? initial,
    TResult? Function(GithubRepositoryLoadingState value)? loading,
    TResult? Function(GithubRepositoryLoadedState value)? loaded,
    TResult? Function(GithubRepositoryErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GithubRepositoryInitialState value)? initial,
    TResult Function(GithubRepositoryLoadingState value)? loading,
    TResult Function(GithubRepositoryLoadedState value)? loaded,
    TResult Function(GithubRepositoryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GithubRepositoryInitialState implements GithubRepositoryState {
  const factory GithubRepositoryInitialState() =
      _$GithubRepositoryInitialStateImpl;
}

/// @nodoc
abstract class _$$GithubRepositoryLoadingStateImplCopyWith<$Res> {
  factory _$$GithubRepositoryLoadingStateImplCopyWith(
          _$GithubRepositoryLoadingStateImpl value,
          $Res Function(_$GithubRepositoryLoadingStateImpl) then) =
      __$$GithubRepositoryLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GithubRepositoryLoadingStateImplCopyWithImpl<$Res>
    extends _$GithubRepositoryStateCopyWithImpl<$Res,
        _$GithubRepositoryLoadingStateImpl>
    implements _$$GithubRepositoryLoadingStateImplCopyWith<$Res> {
  __$$GithubRepositoryLoadingStateImplCopyWithImpl(
      _$GithubRepositoryLoadingStateImpl _value,
      $Res Function(_$GithubRepositoryLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GithubRepositoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GithubRepositoryLoadingStateImpl
    implements GithubRepositoryLoadingState {
  const _$GithubRepositoryLoadingStateImpl();

  @override
  String toString() {
    return 'GithubRepositoryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubRepositoryLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Repository> searchResult, int currentIndex,
            int maxIndex, String currentQuery)
        loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Repository> searchResult, int currentIndex,
            int maxIndex, String currentQuery)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Repository> searchResult, int currentIndex,
            int maxIndex, String currentQuery)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GithubRepositoryInitialState value) initial,
    required TResult Function(GithubRepositoryLoadingState value) loading,
    required TResult Function(GithubRepositoryLoadedState value) loaded,
    required TResult Function(GithubRepositoryErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GithubRepositoryInitialState value)? initial,
    TResult? Function(GithubRepositoryLoadingState value)? loading,
    TResult? Function(GithubRepositoryLoadedState value)? loaded,
    TResult? Function(GithubRepositoryErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GithubRepositoryInitialState value)? initial,
    TResult Function(GithubRepositoryLoadingState value)? loading,
    TResult Function(GithubRepositoryLoadedState value)? loaded,
    TResult Function(GithubRepositoryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GithubRepositoryLoadingState implements GithubRepositoryState {
  const factory GithubRepositoryLoadingState() =
      _$GithubRepositoryLoadingStateImpl;
}

/// @nodoc
abstract class _$$GithubRepositoryLoadedStateImplCopyWith<$Res> {
  factory _$$GithubRepositoryLoadedStateImplCopyWith(
          _$GithubRepositoryLoadedStateImpl value,
          $Res Function(_$GithubRepositoryLoadedStateImpl) then) =
      __$$GithubRepositoryLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Repository> searchResult,
      int currentIndex,
      int maxIndex,
      String currentQuery});
}

/// @nodoc
class __$$GithubRepositoryLoadedStateImplCopyWithImpl<$Res>
    extends _$GithubRepositoryStateCopyWithImpl<$Res,
        _$GithubRepositoryLoadedStateImpl>
    implements _$$GithubRepositoryLoadedStateImplCopyWith<$Res> {
  __$$GithubRepositoryLoadedStateImplCopyWithImpl(
      _$GithubRepositoryLoadedStateImpl _value,
      $Res Function(_$GithubRepositoryLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GithubRepositoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResult = null,
    Object? currentIndex = null,
    Object? maxIndex = null,
    Object? currentQuery = null,
  }) {
    return _then(_$GithubRepositoryLoadedStateImpl(
      searchResult: null == searchResult
          ? _value._searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<Repository>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      maxIndex: null == maxIndex
          ? _value.maxIndex
          : maxIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentQuery: null == currentQuery
          ? _value.currentQuery
          : currentQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GithubRepositoryLoadedStateImpl implements GithubRepositoryLoadedState {
  const _$GithubRepositoryLoadedStateImpl(
      {required final List<Repository> searchResult,
      required this.currentIndex,
      required this.maxIndex,
      required this.currentQuery})
      : _searchResult = searchResult;

  final List<Repository> _searchResult;
  @override
  List<Repository> get searchResult {
    if (_searchResult is EqualUnmodifiableListView) return _searchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResult);
  }

  @override
  final int currentIndex;
  @override
  final int maxIndex;
  @override
  final String currentQuery;

  @override
  String toString() {
    return 'GithubRepositoryState.loaded(searchResult: $searchResult, currentIndex: $currentIndex, maxIndex: $maxIndex, currentQuery: $currentQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubRepositoryLoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._searchResult, _searchResult) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.maxIndex, maxIndex) ||
                other.maxIndex == maxIndex) &&
            (identical(other.currentQuery, currentQuery) ||
                other.currentQuery == currentQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchResult),
      currentIndex,
      maxIndex,
      currentQuery);

  /// Create a copy of GithubRepositoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubRepositoryLoadedStateImplCopyWith<_$GithubRepositoryLoadedStateImpl>
      get copyWith => __$$GithubRepositoryLoadedStateImplCopyWithImpl<
          _$GithubRepositoryLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Repository> searchResult, int currentIndex,
            int maxIndex, String currentQuery)
        loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(searchResult, currentIndex, maxIndex, currentQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Repository> searchResult, int currentIndex,
            int maxIndex, String currentQuery)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(searchResult, currentIndex, maxIndex, currentQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Repository> searchResult, int currentIndex,
            int maxIndex, String currentQuery)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(searchResult, currentIndex, maxIndex, currentQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GithubRepositoryInitialState value) initial,
    required TResult Function(GithubRepositoryLoadingState value) loading,
    required TResult Function(GithubRepositoryLoadedState value) loaded,
    required TResult Function(GithubRepositoryErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GithubRepositoryInitialState value)? initial,
    TResult? Function(GithubRepositoryLoadingState value)? loading,
    TResult? Function(GithubRepositoryLoadedState value)? loaded,
    TResult? Function(GithubRepositoryErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GithubRepositoryInitialState value)? initial,
    TResult Function(GithubRepositoryLoadingState value)? loading,
    TResult Function(GithubRepositoryLoadedState value)? loaded,
    TResult Function(GithubRepositoryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class GithubRepositoryLoadedState implements GithubRepositoryState {
  const factory GithubRepositoryLoadedState(
      {required final List<Repository> searchResult,
      required final int currentIndex,
      required final int maxIndex,
      required final String currentQuery}) = _$GithubRepositoryLoadedStateImpl;

  List<Repository> get searchResult;
  int get currentIndex;
  int get maxIndex;
  String get currentQuery;

  /// Create a copy of GithubRepositoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GithubRepositoryLoadedStateImplCopyWith<_$GithubRepositoryLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GithubRepositoryErrorStateImplCopyWith<$Res> {
  factory _$$GithubRepositoryErrorStateImplCopyWith(
          _$GithubRepositoryErrorStateImpl value,
          $Res Function(_$GithubRepositoryErrorStateImpl) then) =
      __$$GithubRepositoryErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GithubRepositoryErrorStateImplCopyWithImpl<$Res>
    extends _$GithubRepositoryStateCopyWithImpl<$Res,
        _$GithubRepositoryErrorStateImpl>
    implements _$$GithubRepositoryErrorStateImplCopyWith<$Res> {
  __$$GithubRepositoryErrorStateImplCopyWithImpl(
      _$GithubRepositoryErrorStateImpl _value,
      $Res Function(_$GithubRepositoryErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GithubRepositoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GithubRepositoryErrorStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GithubRepositoryErrorStateImpl implements GithubRepositoryErrorState {
  const _$GithubRepositoryErrorStateImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'GithubRepositoryState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubRepositoryErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of GithubRepositoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubRepositoryErrorStateImplCopyWith<_$GithubRepositoryErrorStateImpl>
      get copyWith => __$$GithubRepositoryErrorStateImplCopyWithImpl<
          _$GithubRepositoryErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Repository> searchResult, int currentIndex,
            int maxIndex, String currentQuery)
        loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Repository> searchResult, int currentIndex,
            int maxIndex, String currentQuery)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Repository> searchResult, int currentIndex,
            int maxIndex, String currentQuery)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GithubRepositoryInitialState value) initial,
    required TResult Function(GithubRepositoryLoadingState value) loading,
    required TResult Function(GithubRepositoryLoadedState value) loaded,
    required TResult Function(GithubRepositoryErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GithubRepositoryInitialState value)? initial,
    TResult? Function(GithubRepositoryLoadingState value)? loading,
    TResult? Function(GithubRepositoryLoadedState value)? loaded,
    TResult? Function(GithubRepositoryErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GithubRepositoryInitialState value)? initial,
    TResult Function(GithubRepositoryLoadingState value)? loading,
    TResult Function(GithubRepositoryLoadedState value)? loaded,
    TResult Function(GithubRepositoryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GithubRepositoryErrorState implements GithubRepositoryState {
  const factory GithubRepositoryErrorState({required final String error}) =
      _$GithubRepositoryErrorStateImpl;

  String get error;

  /// Create a copy of GithubRepositoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GithubRepositoryErrorStateImplCopyWith<_$GithubRepositoryErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
