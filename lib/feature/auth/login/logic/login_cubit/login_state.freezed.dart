// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState<t> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(t data) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(t data)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(t data)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<t> value) initial,
    required TResult Function(Loading<t> value) loading,
    required TResult Function(Success<t> value) success,
    required TResult Function(Error<t> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<t> value)? initial,
    TResult? Function(Loading<t> value)? loading,
    TResult? Function(Success<t> value)? success,
    TResult? Function(Error<t> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<t> value)? initial,
    TResult Function(Loading<t> value)? loading,
    TResult Function(Success<t> value)? success,
    TResult Function(Error<t> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<t, $Res> {
  factory $LoginStateCopyWith(
          LoginState<t> value, $Res Function(LoginState<t>) then) =
      _$LoginStateCopyWithImpl<t, $Res, LoginState<t>>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<t, $Res, $Val extends LoginState<t>>
    implements $LoginStateCopyWith<t, $Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<t, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<t> value, $Res Function(_$InitialImpl<t>) then) =
      __$$InitialImplCopyWithImpl<t, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<t, $Res>
    extends _$LoginStateCopyWithImpl<t, $Res, _$InitialImpl<t>>
    implements _$$InitialImplCopyWith<t, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<t> _value, $Res Function(_$InitialImpl<t>) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<t> implements _Initial<t> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoginState<$t>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<t>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(t data) success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(t data)? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(t data)? success,
    TResult Function(String error)? failure,
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
    required TResult Function(_Initial<t> value) initial,
    required TResult Function(Loading<t> value) loading,
    required TResult Function(Success<t> value) success,
    required TResult Function(Error<t> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<t> value)? initial,
    TResult? Function(Loading<t> value)? loading,
    TResult? Function(Success<t> value)? success,
    TResult? Function(Error<t> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<t> value)? initial,
    TResult Function(Loading<t> value)? loading,
    TResult Function(Success<t> value)? success,
    TResult Function(Error<t> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<t> implements LoginState<t> {
  const factory _Initial() = _$InitialImpl<t>;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<t, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<t> value, $Res Function(_$LoadingImpl<t>) then) =
      __$$LoadingImplCopyWithImpl<t, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<t, $Res>
    extends _$LoginStateCopyWithImpl<t, $Res, _$LoadingImpl<t>>
    implements _$$LoadingImplCopyWith<t, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<t> _value, $Res Function(_$LoadingImpl<t>) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl<t> implements Loading<t> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'LoginState<$t>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<t>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(t data) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(t data)? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(t data)? success,
    TResult Function(String error)? failure,
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
    required TResult Function(_Initial<t> value) initial,
    required TResult Function(Loading<t> value) loading,
    required TResult Function(Success<t> value) success,
    required TResult Function(Error<t> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<t> value)? initial,
    TResult? Function(Loading<t> value)? loading,
    TResult? Function(Success<t> value)? success,
    TResult? Function(Error<t> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<t> value)? initial,
    TResult Function(Loading<t> value)? loading,
    TResult Function(Success<t> value)? success,
    TResult Function(Error<t> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<t> implements LoginState<t> {
  const factory Loading() = _$LoadingImpl<t>;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<t, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<t> value, $Res Function(_$SuccessImpl<t>) then) =
      __$$SuccessImplCopyWithImpl<t, $Res>;
  @useResult
  $Res call({t data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<t, $Res>
    extends _$LoginStateCopyWithImpl<t, $Res, _$SuccessImpl<t>>
    implements _$$SuccessImplCopyWith<t, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<t> _value, $Res Function(_$SuccessImpl<t>) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessImpl<t>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as t,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<t> implements Success<t> {
  const _$SuccessImpl(this.data);

  @override
  final t data;

  @override
  String toString() {
    return 'LoginState<$t>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<t> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<t, _$SuccessImpl<t>> get copyWith =>
      __$$SuccessImplCopyWithImpl<t, _$SuccessImpl<t>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(t data) success,
    required TResult Function(String error) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(t data)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(t data)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<t> value) initial,
    required TResult Function(Loading<t> value) loading,
    required TResult Function(Success<t> value) success,
    required TResult Function(Error<t> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<t> value)? initial,
    TResult? Function(Loading<t> value)? loading,
    TResult? Function(Success<t> value)? success,
    TResult? Function(Error<t> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<t> value)? initial,
    TResult Function(Loading<t> value)? loading,
    TResult Function(Success<t> value)? success,
    TResult Function(Error<t> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<t> implements LoginState<t> {
  const factory Success(final t data) = _$SuccessImpl<t>;

  t get data;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<t, _$SuccessImpl<t>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<t, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<t> value, $Res Function(_$ErrorImpl<t>) then) =
      __$$ErrorImplCopyWithImpl<t, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<t, $Res>
    extends _$LoginStateCopyWithImpl<t, $Res, _$ErrorImpl<t>>
    implements _$$ErrorImplCopyWith<t, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<t> _value, $Res Function(_$ErrorImpl<t>) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl<t>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<t> implements Error<t> {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'LoginState<$t>.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<t> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<t, _$ErrorImpl<t>> get copyWith =>
      __$$ErrorImplCopyWithImpl<t, _$ErrorImpl<t>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(t data) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(t data)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(t data)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<t> value) initial,
    required TResult Function(Loading<t> value) loading,
    required TResult Function(Success<t> value) success,
    required TResult Function(Error<t> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<t> value)? initial,
    TResult? Function(Loading<t> value)? loading,
    TResult? Function(Success<t> value)? success,
    TResult? Function(Error<t> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<t> value)? initial,
    TResult Function(Loading<t> value)? loading,
    TResult Function(Success<t> value)? success,
    TResult Function(Error<t> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Error<t> implements LoginState<t> {
  const factory Error(final String error) = _$ErrorImpl<t>;

  String get error;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<t, _$ErrorImpl<t>> get copyWith =>
      throw _privateConstructorUsedError;
}
