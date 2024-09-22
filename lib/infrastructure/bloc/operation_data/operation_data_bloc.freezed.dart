// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operation_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OperationDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String orgKey) getIssueList,
    required TResult Function() clearErrorDialogProps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orgKey)? getIssueList,
    TResult? Function()? clearErrorDialogProps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orgKey)? getIssueList,
    TResult Function()? clearErrorDialogProps,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetIssueList value) getIssueList,
    required TResult Function(ClearErrorDialogProps value)
        clearErrorDialogProps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetIssueList value)? getIssueList,
    TResult? Function(ClearErrorDialogProps value)? clearErrorDialogProps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetIssueList value)? getIssueList,
    TResult Function(ClearErrorDialogProps value)? clearErrorDialogProps,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationDataEventCopyWith<$Res> {
  factory $OperationDataEventCopyWith(
          OperationDataEvent value, $Res Function(OperationDataEvent) then) =
      _$OperationDataEventCopyWithImpl<$Res, OperationDataEvent>;
}

/// @nodoc
class _$OperationDataEventCopyWithImpl<$Res, $Val extends OperationDataEvent>
    implements $OperationDataEventCopyWith<$Res> {
  _$OperationDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OperationDataEvent
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
    extends _$OperationDataEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OperationDataEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'OperationDataEvent.started()';
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
    required TResult Function(String orgKey) getIssueList,
    required TResult Function() clearErrorDialogProps,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orgKey)? getIssueList,
    TResult? Function()? clearErrorDialogProps,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orgKey)? getIssueList,
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
    required TResult Function(GetIssueList value) getIssueList,
    required TResult Function(ClearErrorDialogProps value)
        clearErrorDialogProps,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetIssueList value)? getIssueList,
    TResult? Function(ClearErrorDialogProps value)? clearErrorDialogProps,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetIssueList value)? getIssueList,
    TResult Function(ClearErrorDialogProps value)? clearErrorDialogProps,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OperationDataEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetIssueListImplCopyWith<$Res> {
  factory _$$GetIssueListImplCopyWith(
          _$GetIssueListImpl value, $Res Function(_$GetIssueListImpl) then) =
      __$$GetIssueListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orgKey});
}

/// @nodoc
class __$$GetIssueListImplCopyWithImpl<$Res>
    extends _$OperationDataEventCopyWithImpl<$Res, _$GetIssueListImpl>
    implements _$$GetIssueListImplCopyWith<$Res> {
  __$$GetIssueListImplCopyWithImpl(
      _$GetIssueListImpl _value, $Res Function(_$GetIssueListImpl) _then)
      : super(_value, _then);

  /// Create a copy of OperationDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orgKey = null,
  }) {
    return _then(_$GetIssueListImpl(
      orgKey: null == orgKey
          ? _value.orgKey
          : orgKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetIssueListImpl implements GetIssueList {
  const _$GetIssueListImpl({required this.orgKey});

  @override
  final String orgKey;

  @override
  String toString() {
    return 'OperationDataEvent.getIssueList(orgKey: $orgKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetIssueListImpl &&
            (identical(other.orgKey, orgKey) || other.orgKey == orgKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orgKey);

  /// Create a copy of OperationDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetIssueListImplCopyWith<_$GetIssueListImpl> get copyWith =>
      __$$GetIssueListImplCopyWithImpl<_$GetIssueListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String orgKey) getIssueList,
    required TResult Function() clearErrorDialogProps,
  }) {
    return getIssueList(orgKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orgKey)? getIssueList,
    TResult? Function()? clearErrorDialogProps,
  }) {
    return getIssueList?.call(orgKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orgKey)? getIssueList,
    TResult Function()? clearErrorDialogProps,
    required TResult orElse(),
  }) {
    if (getIssueList != null) {
      return getIssueList(orgKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetIssueList value) getIssueList,
    required TResult Function(ClearErrorDialogProps value)
        clearErrorDialogProps,
  }) {
    return getIssueList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetIssueList value)? getIssueList,
    TResult? Function(ClearErrorDialogProps value)? clearErrorDialogProps,
  }) {
    return getIssueList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetIssueList value)? getIssueList,
    TResult Function(ClearErrorDialogProps value)? clearErrorDialogProps,
    required TResult orElse(),
  }) {
    if (getIssueList != null) {
      return getIssueList(this);
    }
    return orElse();
  }
}

abstract class GetIssueList implements OperationDataEvent {
  const factory GetIssueList({required final String orgKey}) =
      _$GetIssueListImpl;

  String get orgKey;

  /// Create a copy of OperationDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetIssueListImplCopyWith<_$GetIssueListImpl> get copyWith =>
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
    extends _$OperationDataEventCopyWithImpl<$Res, _$ClearErrorDialogPropsImpl>
    implements _$$ClearErrorDialogPropsImplCopyWith<$Res> {
  __$$ClearErrorDialogPropsImplCopyWithImpl(_$ClearErrorDialogPropsImpl _value,
      $Res Function(_$ClearErrorDialogPropsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OperationDataEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearErrorDialogPropsImpl implements ClearErrorDialogProps {
  const _$ClearErrorDialogPropsImpl();

  @override
  String toString() {
    return 'OperationDataEvent.clearErrorDialogProps()';
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
    required TResult Function(String orgKey) getIssueList,
    required TResult Function() clearErrorDialogProps,
  }) {
    return clearErrorDialogProps();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orgKey)? getIssueList,
    TResult? Function()? clearErrorDialogProps,
  }) {
    return clearErrorDialogProps?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orgKey)? getIssueList,
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
    required TResult Function(GetIssueList value) getIssueList,
    required TResult Function(ClearErrorDialogProps value)
        clearErrorDialogProps,
  }) {
    return clearErrorDialogProps(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetIssueList value)? getIssueList,
    TResult? Function(ClearErrorDialogProps value)? clearErrorDialogProps,
  }) {
    return clearErrorDialogProps?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetIssueList value)? getIssueList,
    TResult Function(ClearErrorDialogProps value)? clearErrorDialogProps,
    required TResult orElse(),
  }) {
    if (clearErrorDialogProps != null) {
      return clearErrorDialogProps(this);
    }
    return orElse();
  }
}

abstract class ClearErrorDialogProps implements OperationDataEvent {
  const factory ClearErrorDialogProps() = _$ClearErrorDialogPropsImpl;
}

/// @nodoc
mixin _$OperationDataState {
  List<FactoryIssueListEntity> get issueList =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  ErrorDialogProps? get errorDialogProps => throw _privateConstructorUsedError;

  /// Create a copy of OperationDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OperationDataStateCopyWith<OperationDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationDataStateCopyWith<$Res> {
  factory $OperationDataStateCopyWith(
          OperationDataState value, $Res Function(OperationDataState) then) =
      _$OperationDataStateCopyWithImpl<$Res, OperationDataState>;
  @useResult
  $Res call(
      {List<FactoryIssueListEntity> issueList,
      bool isLoading,
      ErrorDialogProps? errorDialogProps});

  $ErrorDialogPropsCopyWith<$Res>? get errorDialogProps;
}

/// @nodoc
class _$OperationDataStateCopyWithImpl<$Res, $Val extends OperationDataState>
    implements $OperationDataStateCopyWith<$Res> {
  _$OperationDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OperationDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issueList = null,
    Object? isLoading = null,
    Object? errorDialogProps = freezed,
  }) {
    return _then(_value.copyWith(
      issueList: null == issueList
          ? _value.issueList
          : issueList // ignore: cast_nullable_to_non_nullable
              as List<FactoryIssueListEntity>,
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

  /// Create a copy of OperationDataState
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
abstract class _$$OperationDataStateImplCopyWith<$Res>
    implements $OperationDataStateCopyWith<$Res> {
  factory _$$OperationDataStateImplCopyWith(_$OperationDataStateImpl value,
          $Res Function(_$OperationDataStateImpl) then) =
      __$$OperationDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FactoryIssueListEntity> issueList,
      bool isLoading,
      ErrorDialogProps? errorDialogProps});

  @override
  $ErrorDialogPropsCopyWith<$Res>? get errorDialogProps;
}

/// @nodoc
class __$$OperationDataStateImplCopyWithImpl<$Res>
    extends _$OperationDataStateCopyWithImpl<$Res, _$OperationDataStateImpl>
    implements _$$OperationDataStateImplCopyWith<$Res> {
  __$$OperationDataStateImplCopyWithImpl(_$OperationDataStateImpl _value,
      $Res Function(_$OperationDataStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OperationDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issueList = null,
    Object? isLoading = null,
    Object? errorDialogProps = freezed,
  }) {
    return _then(_$OperationDataStateImpl(
      issueList: null == issueList
          ? _value._issueList
          : issueList // ignore: cast_nullable_to_non_nullable
              as List<FactoryIssueListEntity>,
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

class _$OperationDataStateImpl extends _OperationDataState {
  _$OperationDataStateImpl(
      {required final List<FactoryIssueListEntity> issueList,
      required this.isLoading,
      this.errorDialogProps})
      : _issueList = issueList,
        super._();

  final List<FactoryIssueListEntity> _issueList;
  @override
  List<FactoryIssueListEntity> get issueList {
    if (_issueList is EqualUnmodifiableListView) return _issueList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_issueList);
  }

  @override
  final bool isLoading;
  @override
  final ErrorDialogProps? errorDialogProps;

  /// Create a copy of OperationDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OperationDataStateImplCopyWith<_$OperationDataStateImpl> get copyWith =>
      __$$OperationDataStateImplCopyWithImpl<_$OperationDataStateImpl>(
          this, _$identity);
}

abstract class _OperationDataState extends OperationDataState {
  factory _OperationDataState(
      {required final List<FactoryIssueListEntity> issueList,
      required final bool isLoading,
      final ErrorDialogProps? errorDialogProps}) = _$OperationDataStateImpl;
  _OperationDataState._() : super._();

  @override
  List<FactoryIssueListEntity> get issueList;
  @override
  bool get isLoading;
  @override
  ErrorDialogProps? get errorDialogProps;

  /// Create a copy of OperationDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OperationDataStateImplCopyWith<_$OperationDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
