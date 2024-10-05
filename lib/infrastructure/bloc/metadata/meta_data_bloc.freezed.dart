// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MetaDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String factoryId, String module)
        getFactoryIssueList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String factoryId, String module)? getFactoryIssueList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String factoryId, String module)? getFactoryIssueList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetFactoryIssueList value) getFactoryIssueList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetFactoryIssueList value)? getFactoryIssueList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetFactoryIssueList value)? getFactoryIssueList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDataEventCopyWith<$Res> {
  factory $MetaDataEventCopyWith(
          MetaDataEvent value, $Res Function(MetaDataEvent) then) =
      _$MetaDataEventCopyWithImpl<$Res, MetaDataEvent>;
}

/// @nodoc
class _$MetaDataEventCopyWithImpl<$Res, $Val extends MetaDataEvent>
    implements $MetaDataEventCopyWith<$Res> {
  _$MetaDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetaDataEvent
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
    extends _$MetaDataEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetaDataEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'MetaDataEvent.started()';
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
    required TResult Function(String factoryId, String module)
        getFactoryIssueList,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String factoryId, String module)? getFactoryIssueList,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String factoryId, String module)? getFactoryIssueList,
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
    required TResult Function(GetFactoryIssueList value) getFactoryIssueList,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetFactoryIssueList value)? getFactoryIssueList,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetFactoryIssueList value)? getFactoryIssueList,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MetaDataEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetFactoryIssueListImplCopyWith<$Res> {
  factory _$$GetFactoryIssueListImplCopyWith(_$GetFactoryIssueListImpl value,
          $Res Function(_$GetFactoryIssueListImpl) then) =
      __$$GetFactoryIssueListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String factoryId, String module});
}

/// @nodoc
class __$$GetFactoryIssueListImplCopyWithImpl<$Res>
    extends _$MetaDataEventCopyWithImpl<$Res, _$GetFactoryIssueListImpl>
    implements _$$GetFactoryIssueListImplCopyWith<$Res> {
  __$$GetFactoryIssueListImplCopyWithImpl(_$GetFactoryIssueListImpl _value,
      $Res Function(_$GetFactoryIssueListImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetaDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? factoryId = null,
    Object? module = null,
  }) {
    return _then(_$GetFactoryIssueListImpl(
      null == factoryId
          ? _value.factoryId
          : factoryId // ignore: cast_nullable_to_non_nullable
              as String,
      null == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetFactoryIssueListImpl implements GetFactoryIssueList {
  const _$GetFactoryIssueListImpl(this.factoryId, this.module);

  @override
  final String factoryId;
  @override
  final String module;

  @override
  String toString() {
    return 'MetaDataEvent.getFactoryIssueList(factoryId: $factoryId, module: $module)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFactoryIssueListImpl &&
            (identical(other.factoryId, factoryId) ||
                other.factoryId == factoryId) &&
            (identical(other.module, module) || other.module == module));
  }

  @override
  int get hashCode => Object.hash(runtimeType, factoryId, module);

  /// Create a copy of MetaDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFactoryIssueListImplCopyWith<_$GetFactoryIssueListImpl> get copyWith =>
      __$$GetFactoryIssueListImplCopyWithImpl<_$GetFactoryIssueListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String factoryId, String module)
        getFactoryIssueList,
  }) {
    return getFactoryIssueList(factoryId, module);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String factoryId, String module)? getFactoryIssueList,
  }) {
    return getFactoryIssueList?.call(factoryId, module);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String factoryId, String module)? getFactoryIssueList,
    required TResult orElse(),
  }) {
    if (getFactoryIssueList != null) {
      return getFactoryIssueList(factoryId, module);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetFactoryIssueList value) getFactoryIssueList,
  }) {
    return getFactoryIssueList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetFactoryIssueList value)? getFactoryIssueList,
  }) {
    return getFactoryIssueList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetFactoryIssueList value)? getFactoryIssueList,
    required TResult orElse(),
  }) {
    if (getFactoryIssueList != null) {
      return getFactoryIssueList(this);
    }
    return orElse();
  }
}

abstract class GetFactoryIssueList implements MetaDataEvent {
  const factory GetFactoryIssueList(
      final String factoryId, final String module) = _$GetFactoryIssueListImpl;

  String get factoryId;
  String get module;

  /// Create a copy of MetaDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFactoryIssueListImplCopyWith<_$GetFactoryIssueListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MetaDataState {
  List<FactoryIssueList>? get factoryIssueList =>
      throw _privateConstructorUsedError;

  /// Create a copy of MetaDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaDataStateCopyWith<MetaDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDataStateCopyWith<$Res> {
  factory $MetaDataStateCopyWith(
          MetaDataState value, $Res Function(MetaDataState) then) =
      _$MetaDataStateCopyWithImpl<$Res, MetaDataState>;
  @useResult
  $Res call({List<FactoryIssueList>? factoryIssueList});
}

/// @nodoc
class _$MetaDataStateCopyWithImpl<$Res, $Val extends MetaDataState>
    implements $MetaDataStateCopyWith<$Res> {
  _$MetaDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetaDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? factoryIssueList = freezed,
  }) {
    return _then(_value.copyWith(
      factoryIssueList: freezed == factoryIssueList
          ? _value.factoryIssueList
          : factoryIssueList // ignore: cast_nullable_to_non_nullable
              as List<FactoryIssueList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaDataStateImplCopyWith<$Res>
    implements $MetaDataStateCopyWith<$Res> {
  factory _$$MetaDataStateImplCopyWith(
          _$MetaDataStateImpl value, $Res Function(_$MetaDataStateImpl) then) =
      __$$MetaDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FactoryIssueList>? factoryIssueList});
}

/// @nodoc
class __$$MetaDataStateImplCopyWithImpl<$Res>
    extends _$MetaDataStateCopyWithImpl<$Res, _$MetaDataStateImpl>
    implements _$$MetaDataStateImplCopyWith<$Res> {
  __$$MetaDataStateImplCopyWithImpl(
      _$MetaDataStateImpl _value, $Res Function(_$MetaDataStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetaDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? factoryIssueList = freezed,
  }) {
    return _then(_$MetaDataStateImpl(
      factoryIssueList: freezed == factoryIssueList
          ? _value._factoryIssueList
          : factoryIssueList // ignore: cast_nullable_to_non_nullable
              as List<FactoryIssueList>?,
    ));
  }
}

/// @nodoc

class _$MetaDataStateImpl extends _MetaDataState {
  _$MetaDataStateImpl({final List<FactoryIssueList>? factoryIssueList})
      : _factoryIssueList = factoryIssueList,
        super._();

  final List<FactoryIssueList>? _factoryIssueList;
  @override
  List<FactoryIssueList>? get factoryIssueList {
    final value = _factoryIssueList;
    if (value == null) return null;
    if (_factoryIssueList is EqualUnmodifiableListView)
      return _factoryIssueList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of MetaDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaDataStateImplCopyWith<_$MetaDataStateImpl> get copyWith =>
      __$$MetaDataStateImplCopyWithImpl<_$MetaDataStateImpl>(this, _$identity);
}

abstract class _MetaDataState extends MetaDataState {
  factory _MetaDataState({final List<FactoryIssueList>? factoryIssueList}) =
      _$MetaDataStateImpl;
  _MetaDataState._() : super._();

  @override
  List<FactoryIssueList>? get factoryIssueList;

  /// Create a copy of MetaDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaDataStateImplCopyWith<_$MetaDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
