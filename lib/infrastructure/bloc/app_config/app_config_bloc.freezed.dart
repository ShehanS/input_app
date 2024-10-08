// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppConfigEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String token) getAppConfig,
    required TResult Function() clearErrorDialogProps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String token)? getAppConfig,
    TResult? Function()? clearErrorDialogProps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String token)? getAppConfig,
    TResult Function()? clearErrorDialogProps,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAppConfig value) getAppConfig,
    required TResult Function(ClearErrorDialogProps value)
        clearErrorDialogProps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAppConfig value)? getAppConfig,
    TResult? Function(ClearErrorDialogProps value)? clearErrorDialogProps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAppConfig value)? getAppConfig,
    TResult Function(ClearErrorDialogProps value)? clearErrorDialogProps,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigEventCopyWith<$Res> {
  factory $AppConfigEventCopyWith(
          AppConfigEvent value, $Res Function(AppConfigEvent) then) =
      _$AppConfigEventCopyWithImpl<$Res, AppConfigEvent>;
}

/// @nodoc
class _$AppConfigEventCopyWithImpl<$Res, $Val extends AppConfigEvent>
    implements $AppConfigEventCopyWith<$Res> {
  _$AppConfigEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppConfigEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AppConfigEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppConfigEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AppConfigEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String token) getAppConfig,
    required TResult Function() clearErrorDialogProps,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String token)? getAppConfig,
    TResult? Function()? clearErrorDialogProps,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String token)? getAppConfig,
    TResult Function()? clearErrorDialogProps,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAppConfig value) getAppConfig,
    required TResult Function(ClearErrorDialogProps value)
        clearErrorDialogProps,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAppConfig value)? getAppConfig,
    TResult? Function(ClearErrorDialogProps value)? clearErrorDialogProps,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAppConfig value)? getAppConfig,
    TResult Function(ClearErrorDialogProps value)? clearErrorDialogProps,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppConfigEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetAppConfigImplCopyWith<$Res> {
  factory _$$GetAppConfigImplCopyWith(
          _$GetAppConfigImpl value, $Res Function(_$GetAppConfigImpl) then) =
      __$$GetAppConfigImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$GetAppConfigImplCopyWithImpl<$Res>
    extends _$AppConfigEventCopyWithImpl<$Res, _$GetAppConfigImpl>
    implements _$$GetAppConfigImplCopyWith<$Res> {
  __$$GetAppConfigImplCopyWithImpl(
      _$GetAppConfigImpl _value, $Res Function(_$GetAppConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$GetAppConfigImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAppConfigImpl implements GetAppConfig {
  const _$GetAppConfigImpl({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'AppConfigEvent.getAppConfig(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAppConfigImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of AppConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAppConfigImplCopyWith<_$GetAppConfigImpl> get copyWith =>
      __$$GetAppConfigImplCopyWithImpl<_$GetAppConfigImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String token) getAppConfig,
    required TResult Function() clearErrorDialogProps,
  }) {
    return getAppConfig(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String token)? getAppConfig,
    TResult? Function()? clearErrorDialogProps,
  }) {
    return getAppConfig?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String token)? getAppConfig,
    TResult Function()? clearErrorDialogProps,
    required TResult orElse(),
  }) {
    if (getAppConfig != null) {
      return getAppConfig(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAppConfig value) getAppConfig,
    required TResult Function(ClearErrorDialogProps value)
        clearErrorDialogProps,
  }) {
    return getAppConfig(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAppConfig value)? getAppConfig,
    TResult? Function(ClearErrorDialogProps value)? clearErrorDialogProps,
  }) {
    return getAppConfig?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAppConfig value)? getAppConfig,
    TResult Function(ClearErrorDialogProps value)? clearErrorDialogProps,
    required TResult orElse(),
  }) {
    if (getAppConfig != null) {
      return getAppConfig(this);
    }
    return orElse();
  }
}

abstract class GetAppConfig implements AppConfigEvent {
  const factory GetAppConfig({required final String token}) =
      _$GetAppConfigImpl;

  String get token;

  /// Create a copy of AppConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAppConfigImplCopyWith<_$GetAppConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearErrorDialogPropsImplCopyWith<$Res> {
  factory _$$ClearErrorDialogPropsImplCopyWith(
          _$ClearErrorDialogPropsImpl value,
          $Res Function(_$ClearErrorDialogPropsImpl) then) =
      __$$ClearErrorDialogPropsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearErrorDialogPropsImplCopyWithImpl<$Res>
    extends _$AppConfigEventCopyWithImpl<$Res, _$ClearErrorDialogPropsImpl>
    implements _$$ClearErrorDialogPropsImplCopyWith<$Res> {
  __$$ClearErrorDialogPropsImplCopyWithImpl(_$ClearErrorDialogPropsImpl _value,
      $Res Function(_$ClearErrorDialogPropsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppConfigEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearErrorDialogPropsImpl implements ClearErrorDialogProps {
  const _$ClearErrorDialogPropsImpl();

  @override
  String toString() {
    return 'AppConfigEvent.clearErrorDialogProps()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearErrorDialogPropsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String token) getAppConfig,
    required TResult Function() clearErrorDialogProps,
  }) {
    return clearErrorDialogProps();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String token)? getAppConfig,
    TResult? Function()? clearErrorDialogProps,
  }) {
    return clearErrorDialogProps?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String token)? getAppConfig,
    TResult Function()? clearErrorDialogProps,
    required TResult orElse(),
  }) {
    if (clearErrorDialogProps != null) {
      return clearErrorDialogProps();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAppConfig value) getAppConfig,
    required TResult Function(ClearErrorDialogProps value)
        clearErrorDialogProps,
  }) {
    return clearErrorDialogProps(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAppConfig value)? getAppConfig,
    TResult? Function(ClearErrorDialogProps value)? clearErrorDialogProps,
  }) {
    return clearErrorDialogProps?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAppConfig value)? getAppConfig,
    TResult Function(ClearErrorDialogProps value)? clearErrorDialogProps,
    required TResult orElse(),
  }) {
    if (clearErrorDialogProps != null) {
      return clearErrorDialogProps(this);
    }
    return orElse();
  }
}

abstract class ClearErrorDialogProps implements AppConfigEvent {
  const factory ClearErrorDialogProps() = _$ClearErrorDialogPropsImpl;
}

/// @nodoc
mixin _$AppConfigState {
  dynamic get appConfig => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  ErrorDialogProps? get errorDialogProps => throw _privateConstructorUsedError;

  /// Create a copy of AppConfigState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppConfigStateCopyWith<AppConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigStateCopyWith<$Res> {
  factory $AppConfigStateCopyWith(
          AppConfigState value, $Res Function(AppConfigState) then) =
      _$AppConfigStateCopyWithImpl<$Res, AppConfigState>;
  @useResult
  $Res call(
      {dynamic appConfig, bool isLoading, ErrorDialogProps? errorDialogProps});

  $ErrorDialogPropsCopyWith<$Res>? get errorDialogProps;
}

/// @nodoc
class _$AppConfigStateCopyWithImpl<$Res, $Val extends AppConfigState>
    implements $AppConfigStateCopyWith<$Res> {
  _$AppConfigStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppConfigState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appConfig = freezed,
    Object? isLoading = null,
    Object? errorDialogProps = freezed,
  }) {
    return _then(_value.copyWith(
      appConfig: freezed == appConfig
          ? _value.appConfig
          : appConfig // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorDialogProps: freezed == errorDialogProps
          ? _value.errorDialogProps
          : errorDialogProps // ignore: cast_nullable_to_non_nullable
              as ErrorDialogProps?,
    ) as $Val);
  }

  /// Create a copy of AppConfigState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorDialogPropsCopyWith<$Res>? get errorDialogProps {
    if (_value.errorDialogProps == null) {
      return null;
    }

    return $ErrorDialogPropsCopyWith<$Res>(_value.errorDialogProps!, (value) {
      return _then(_value.copyWith(errorDialogProps: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppConfigStateImplCopyWith<$Res>
    implements $AppConfigStateCopyWith<$Res> {
  factory _$$AppConfigStateImplCopyWith(_$AppConfigStateImpl value,
          $Res Function(_$AppConfigStateImpl) then) =
      __$$AppConfigStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic appConfig, bool isLoading, ErrorDialogProps? errorDialogProps});

  @override
  $ErrorDialogPropsCopyWith<$Res>? get errorDialogProps;
}

/// @nodoc
class __$$AppConfigStateImplCopyWithImpl<$Res>
    extends _$AppConfigStateCopyWithImpl<$Res, _$AppConfigStateImpl>
    implements _$$AppConfigStateImplCopyWith<$Res> {
  __$$AppConfigStateImplCopyWithImpl(
      _$AppConfigStateImpl _value, $Res Function(_$AppConfigStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppConfigState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appConfig = freezed,
    Object? isLoading = null,
    Object? errorDialogProps = freezed,
  }) {
    return _then(_$AppConfigStateImpl(
      appConfig: freezed == appConfig
          ? _value.appConfig
          : appConfig // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorDialogProps: freezed == errorDialogProps
          ? _value.errorDialogProps
          : errorDialogProps // ignore: cast_nullable_to_non_nullable
              as ErrorDialogProps?,
    ));
  }
}

/// @nodoc

class _$AppConfigStateImpl extends _AppConfigState {
  _$AppConfigStateImpl(
      {required this.appConfig, required this.isLoading, this.errorDialogProps})
      : super._();

  @override
  final dynamic appConfig;
  @override
  final bool isLoading;
  @override
  final ErrorDialogProps? errorDialogProps;

  /// Create a copy of AppConfigState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppConfigStateImplCopyWith<_$AppConfigStateImpl> get copyWith =>
      __$$AppConfigStateImplCopyWithImpl<_$AppConfigStateImpl>(
          this, _$identity);
}

abstract class _AppConfigState extends AppConfigState {
  factory _AppConfigState(
      {required final dynamic appConfig,
      required final bool isLoading,
      final ErrorDialogProps? errorDialogProps}) = _$AppConfigStateImpl;
  _AppConfigState._() : super._();

  @override
  dynamic get appConfig;
  @override
  bool get isLoading;
  @override
  ErrorDialogProps? get errorDialogProps;

  /// Create a copy of AppConfigState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppConfigStateImplCopyWith<_$AppConfigStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
