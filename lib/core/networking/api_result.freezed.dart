// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiResult<t> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(t data) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(t data)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(t data)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<t> value) success,
    required TResult Function(Failure<t> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<t> value)? success,
    TResult? Function(Failure<t> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<t> value)? success,
    TResult Function(Failure<t> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResultCopyWith<t, $Res> {
  factory $ApiResultCopyWith(
          ApiResult<t> value, $Res Function(ApiResult<t>) then) =
      _$ApiResultCopyWithImpl<t, $Res, ApiResult<t>>;
}

/// @nodoc
class _$ApiResultCopyWithImpl<t, $Res, $Val extends ApiResult<t>>
    implements $ApiResultCopyWith<t, $Res> {
  _$ApiResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
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
    extends _$ApiResultCopyWithImpl<t, $Res, _$SuccessImpl<t>>
    implements _$$SuccessImplCopyWith<t, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<t> _value, $Res Function(_$SuccessImpl<t>) _then)
      : super(_value, _then);

  /// Create a copy of ApiResult
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
  _$SuccessImpl(this.data);

  @override
  final t data;

  @override
  String toString() {
    return 'ApiResult<$t>.success(data: $data)';
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

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<t, _$SuccessImpl<t>> get copyWith =>
      __$$SuccessImplCopyWithImpl<t, _$SuccessImpl<t>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(t data) success,
    required TResult Function(String error) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(t data)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(Success<t> value) success,
    required TResult Function(Failure<t> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<t> value)? success,
    TResult? Function(Failure<t> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<t> value)? success,
    TResult Function(Failure<t> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<t> implements ApiResult<t> {
  factory Success(final t data) = _$SuccessImpl<t>;

  t get data;

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<t, _$SuccessImpl<t>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<t, $Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl<t> value, $Res Function(_$FailureImpl<t>) then) =
      __$$FailureImplCopyWithImpl<t, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<t, $Res>
    extends _$ApiResultCopyWithImpl<t, $Res, _$FailureImpl<t>>
    implements _$$FailureImplCopyWith<t, $Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl<t> _value, $Res Function(_$FailureImpl<t>) _then)
      : super(_value, _then);

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl<t>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl<t> implements Failure<t> {
  _$FailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ApiResult<$t>.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl<t> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<t, _$FailureImpl<t>> get copyWith =>
      __$$FailureImplCopyWithImpl<t, _$FailureImpl<t>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(t data) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(t data)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(Success<t> value) success,
    required TResult Function(Failure<t> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<t> value)? success,
    TResult? Function(Failure<t> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<t> value)? success,
    TResult Function(Failure<t> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<t> implements ApiResult<t> {
  factory Failure(final String error) = _$FailureImpl<t>;

  String get error;

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<t, _$FailureImpl<t>> get copyWith =>
      throw _privateConstructorUsedError;
}
