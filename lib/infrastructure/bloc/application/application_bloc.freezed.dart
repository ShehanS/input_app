// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApplicationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setDefaultStation,
    required TResult Function(Station station) changeStation,
    required TResult Function(List<SubIssueList> deptIssueList, String color)
        selectDepartment,
    required TResult Function(Resource resource) selectResource,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setDefaultStation,
    TResult? Function(Station station)? changeStation,
    TResult? Function(List<SubIssueList> deptIssueList, String color)?
        selectDepartment,
    TResult? Function(Resource resource)? selectResource,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setDefaultStation,
    TResult Function(Station station)? changeStation,
    TResult Function(List<SubIssueList> deptIssueList, String color)?
        selectDepartment,
    TResult Function(Resource resource)? selectResource,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SetDefaultStation value) setDefaultStation,
    required TResult Function(ChangeStation value) changeStation,
    required TResult Function(SelectDepartment value) selectDepartment,
    required TResult Function(SelectResource value) selectResource,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SetDefaultStation value)? setDefaultStation,
    TResult? Function(ChangeStation value)? changeStation,
    TResult? Function(SelectDepartment value)? selectDepartment,
    TResult? Function(SelectResource value)? selectResource,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetDefaultStation value)? setDefaultStation,
    TResult Function(ChangeStation value)? changeStation,
    TResult Function(SelectDepartment value)? selectDepartment,
    TResult Function(SelectResource value)? selectResource,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationEventCopyWith<$Res> {
  factory $ApplicationEventCopyWith(
          ApplicationEvent value, $Res Function(ApplicationEvent) then) =
      _$ApplicationEventCopyWithImpl<$Res, ApplicationEvent>;
}

/// @nodoc
class _$ApplicationEventCopyWithImpl<$Res, $Val extends ApplicationEvent>
    implements $ApplicationEventCopyWith<$Res> {
  _$ApplicationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApplicationEvent
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
    extends _$ApplicationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApplicationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ApplicationEvent.started()';
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
    required TResult Function() setDefaultStation,
    required TResult Function(Station station) changeStation,
    required TResult Function(List<SubIssueList> deptIssueList, String color)
        selectDepartment,
    required TResult Function(Resource resource) selectResource,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setDefaultStation,
    TResult? Function(Station station)? changeStation,
    TResult? Function(List<SubIssueList> deptIssueList, String color)?
        selectDepartment,
    TResult? Function(Resource resource)? selectResource,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setDefaultStation,
    TResult Function(Station station)? changeStation,
    TResult Function(List<SubIssueList> deptIssueList, String color)?
        selectDepartment,
    TResult Function(Resource resource)? selectResource,
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
    required TResult Function(SetDefaultStation value) setDefaultStation,
    required TResult Function(ChangeStation value) changeStation,
    required TResult Function(SelectDepartment value) selectDepartment,
    required TResult Function(SelectResource value) selectResource,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SetDefaultStation value)? setDefaultStation,
    TResult? Function(ChangeStation value)? changeStation,
    TResult? Function(SelectDepartment value)? selectDepartment,
    TResult? Function(SelectResource value)? selectResource,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetDefaultStation value)? setDefaultStation,
    TResult Function(ChangeStation value)? changeStation,
    TResult Function(SelectDepartment value)? selectDepartment,
    TResult Function(SelectResource value)? selectResource,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ApplicationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SetDefaultStationImplCopyWith<$Res> {
  factory _$$SetDefaultStationImplCopyWith(_$SetDefaultStationImpl value,
          $Res Function(_$SetDefaultStationImpl) then) =
      __$$SetDefaultStationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetDefaultStationImplCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$SetDefaultStationImpl>
    implements _$$SetDefaultStationImplCopyWith<$Res> {
  __$$SetDefaultStationImplCopyWithImpl(_$SetDefaultStationImpl _value,
      $Res Function(_$SetDefaultStationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApplicationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SetDefaultStationImpl implements SetDefaultStation {
  const _$SetDefaultStationImpl();

  @override
  String toString() {
    return 'ApplicationEvent.setDefaultStation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetDefaultStationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setDefaultStation,
    required TResult Function(Station station) changeStation,
    required TResult Function(List<SubIssueList> deptIssueList, String color)
        selectDepartment,
    required TResult Function(Resource resource) selectResource,
  }) {
    return setDefaultStation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setDefaultStation,
    TResult? Function(Station station)? changeStation,
    TResult? Function(List<SubIssueList> deptIssueList, String color)?
        selectDepartment,
    TResult? Function(Resource resource)? selectResource,
  }) {
    return setDefaultStation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setDefaultStation,
    TResult Function(Station station)? changeStation,
    TResult Function(List<SubIssueList> deptIssueList, String color)?
        selectDepartment,
    TResult Function(Resource resource)? selectResource,
    required TResult orElse(),
  }) {
    if (setDefaultStation != null) {
      return setDefaultStation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SetDefaultStation value) setDefaultStation,
    required TResult Function(ChangeStation value) changeStation,
    required TResult Function(SelectDepartment value) selectDepartment,
    required TResult Function(SelectResource value) selectResource,
  }) {
    return setDefaultStation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SetDefaultStation value)? setDefaultStation,
    TResult? Function(ChangeStation value)? changeStation,
    TResult? Function(SelectDepartment value)? selectDepartment,
    TResult? Function(SelectResource value)? selectResource,
  }) {
    return setDefaultStation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetDefaultStation value)? setDefaultStation,
    TResult Function(ChangeStation value)? changeStation,
    TResult Function(SelectDepartment value)? selectDepartment,
    TResult Function(SelectResource value)? selectResource,
    required TResult orElse(),
  }) {
    if (setDefaultStation != null) {
      return setDefaultStation(this);
    }
    return orElse();
  }
}

abstract class SetDefaultStation implements ApplicationEvent {
  const factory SetDefaultStation() = _$SetDefaultStationImpl;
}

/// @nodoc
abstract class _$$ChangeStationImplCopyWith<$Res> {
  factory _$$ChangeStationImplCopyWith(
          _$ChangeStationImpl value, $Res Function(_$ChangeStationImpl) then) =
      __$$ChangeStationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Station station});

  $StationCopyWith<$Res> get station;
}

/// @nodoc
class __$$ChangeStationImplCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$ChangeStationImpl>
    implements _$$ChangeStationImplCopyWith<$Res> {
  __$$ChangeStationImplCopyWithImpl(
      _$ChangeStationImpl _value, $Res Function(_$ChangeStationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApplicationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = null,
  }) {
    return _then(_$ChangeStationImpl(
      null == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as Station,
    ));
  }

  /// Create a copy of ApplicationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StationCopyWith<$Res> get station {
    return $StationCopyWith<$Res>(_value.station, (value) {
      return _then(_value.copyWith(station: value));
    });
  }
}

/// @nodoc

class _$ChangeStationImpl implements ChangeStation {
  const _$ChangeStationImpl(this.station);

  @override
  final Station station;

  @override
  String toString() {
    return 'ApplicationEvent.changeStation(station: $station)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeStationImpl &&
            (identical(other.station, station) || other.station == station));
  }

  @override
  int get hashCode => Object.hash(runtimeType, station);

  /// Create a copy of ApplicationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeStationImplCopyWith<_$ChangeStationImpl> get copyWith =>
      __$$ChangeStationImplCopyWithImpl<_$ChangeStationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setDefaultStation,
    required TResult Function(Station station) changeStation,
    required TResult Function(List<SubIssueList> deptIssueList, String color)
        selectDepartment,
    required TResult Function(Resource resource) selectResource,
  }) {
    return changeStation(station);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setDefaultStation,
    TResult? Function(Station station)? changeStation,
    TResult? Function(List<SubIssueList> deptIssueList, String color)?
        selectDepartment,
    TResult? Function(Resource resource)? selectResource,
  }) {
    return changeStation?.call(station);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setDefaultStation,
    TResult Function(Station station)? changeStation,
    TResult Function(List<SubIssueList> deptIssueList, String color)?
        selectDepartment,
    TResult Function(Resource resource)? selectResource,
    required TResult orElse(),
  }) {
    if (changeStation != null) {
      return changeStation(station);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SetDefaultStation value) setDefaultStation,
    required TResult Function(ChangeStation value) changeStation,
    required TResult Function(SelectDepartment value) selectDepartment,
    required TResult Function(SelectResource value) selectResource,
  }) {
    return changeStation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SetDefaultStation value)? setDefaultStation,
    TResult? Function(ChangeStation value)? changeStation,
    TResult? Function(SelectDepartment value)? selectDepartment,
    TResult? Function(SelectResource value)? selectResource,
  }) {
    return changeStation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetDefaultStation value)? setDefaultStation,
    TResult Function(ChangeStation value)? changeStation,
    TResult Function(SelectDepartment value)? selectDepartment,
    TResult Function(SelectResource value)? selectResource,
    required TResult orElse(),
  }) {
    if (changeStation != null) {
      return changeStation(this);
    }
    return orElse();
  }
}

abstract class ChangeStation implements ApplicationEvent {
  const factory ChangeStation(final Station station) = _$ChangeStationImpl;

  Station get station;

  /// Create a copy of ApplicationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeStationImplCopyWith<_$ChangeStationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectDepartmentImplCopyWith<$Res> {
  factory _$$SelectDepartmentImplCopyWith(_$SelectDepartmentImpl value,
          $Res Function(_$SelectDepartmentImpl) then) =
      __$$SelectDepartmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SubIssueList> deptIssueList, String color});
}

/// @nodoc
class __$$SelectDepartmentImplCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$SelectDepartmentImpl>
    implements _$$SelectDepartmentImplCopyWith<$Res> {
  __$$SelectDepartmentImplCopyWithImpl(_$SelectDepartmentImpl _value,
      $Res Function(_$SelectDepartmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApplicationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deptIssueList = null,
    Object? color = null,
  }) {
    return _then(_$SelectDepartmentImpl(
      null == deptIssueList
          ? _value._deptIssueList
          : deptIssueList // ignore: cast_nullable_to_non_nullable
              as List<SubIssueList>,
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectDepartmentImpl implements SelectDepartment {
  const _$SelectDepartmentImpl(
      final List<SubIssueList> deptIssueList, this.color)
      : _deptIssueList = deptIssueList;

  final List<SubIssueList> _deptIssueList;
  @override
  List<SubIssueList> get deptIssueList {
    if (_deptIssueList is EqualUnmodifiableListView) return _deptIssueList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deptIssueList);
  }

  @override
  final String color;

  @override
  String toString() {
    return 'ApplicationEvent.selectDepartment(deptIssueList: $deptIssueList, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDepartmentImpl &&
            const DeepCollectionEquality()
                .equals(other._deptIssueList, _deptIssueList) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_deptIssueList), color);

  /// Create a copy of ApplicationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDepartmentImplCopyWith<_$SelectDepartmentImpl> get copyWith =>
      __$$SelectDepartmentImplCopyWithImpl<_$SelectDepartmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setDefaultStation,
    required TResult Function(Station station) changeStation,
    required TResult Function(List<SubIssueList> deptIssueList, String color)
        selectDepartment,
    required TResult Function(Resource resource) selectResource,
  }) {
    return selectDepartment(deptIssueList, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setDefaultStation,
    TResult? Function(Station station)? changeStation,
    TResult? Function(List<SubIssueList> deptIssueList, String color)?
        selectDepartment,
    TResult? Function(Resource resource)? selectResource,
  }) {
    return selectDepartment?.call(deptIssueList, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setDefaultStation,
    TResult Function(Station station)? changeStation,
    TResult Function(List<SubIssueList> deptIssueList, String color)?
        selectDepartment,
    TResult Function(Resource resource)? selectResource,
    required TResult orElse(),
  }) {
    if (selectDepartment != null) {
      return selectDepartment(deptIssueList, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SetDefaultStation value) setDefaultStation,
    required TResult Function(ChangeStation value) changeStation,
    required TResult Function(SelectDepartment value) selectDepartment,
    required TResult Function(SelectResource value) selectResource,
  }) {
    return selectDepartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SetDefaultStation value)? setDefaultStation,
    TResult? Function(ChangeStation value)? changeStation,
    TResult? Function(SelectDepartment value)? selectDepartment,
    TResult? Function(SelectResource value)? selectResource,
  }) {
    return selectDepartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetDefaultStation value)? setDefaultStation,
    TResult Function(ChangeStation value)? changeStation,
    TResult Function(SelectDepartment value)? selectDepartment,
    TResult Function(SelectResource value)? selectResource,
    required TResult orElse(),
  }) {
    if (selectDepartment != null) {
      return selectDepartment(this);
    }
    return orElse();
  }
}

abstract class SelectDepartment implements ApplicationEvent {
  const factory SelectDepartment(
          final List<SubIssueList> deptIssueList, final String color) =
      _$SelectDepartmentImpl;

  List<SubIssueList> get deptIssueList;
  String get color;

  /// Create a copy of ApplicationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectDepartmentImplCopyWith<_$SelectDepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectResourceImplCopyWith<$Res> {
  factory _$$SelectResourceImplCopyWith(_$SelectResourceImpl value,
          $Res Function(_$SelectResourceImpl) then) =
      __$$SelectResourceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Resource resource});

  $ResourceCopyWith<$Res> get resource;
}

/// @nodoc
class __$$SelectResourceImplCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$SelectResourceImpl>
    implements _$$SelectResourceImplCopyWith<$Res> {
  __$$SelectResourceImplCopyWithImpl(
      _$SelectResourceImpl _value, $Res Function(_$SelectResourceImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApplicationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resource = null,
  }) {
    return _then(_$SelectResourceImpl(
      null == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as Resource,
    ));
  }

  /// Create a copy of ApplicationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResourceCopyWith<$Res> get resource {
    return $ResourceCopyWith<$Res>(_value.resource, (value) {
      return _then(_value.copyWith(resource: value));
    });
  }
}

/// @nodoc

class _$SelectResourceImpl implements SelectResource {
  const _$SelectResourceImpl(this.resource);

  @override
  final Resource resource;

  @override
  String toString() {
    return 'ApplicationEvent.selectResource(resource: $resource)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectResourceImpl &&
            (identical(other.resource, resource) ||
                other.resource == resource));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resource);

  /// Create a copy of ApplicationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectResourceImplCopyWith<_$SelectResourceImpl> get copyWith =>
      __$$SelectResourceImplCopyWithImpl<_$SelectResourceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setDefaultStation,
    required TResult Function(Station station) changeStation,
    required TResult Function(List<SubIssueList> deptIssueList, String color)
        selectDepartment,
    required TResult Function(Resource resource) selectResource,
  }) {
    return selectResource(resource);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setDefaultStation,
    TResult? Function(Station station)? changeStation,
    TResult? Function(List<SubIssueList> deptIssueList, String color)?
        selectDepartment,
    TResult? Function(Resource resource)? selectResource,
  }) {
    return selectResource?.call(resource);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setDefaultStation,
    TResult Function(Station station)? changeStation,
    TResult Function(List<SubIssueList> deptIssueList, String color)?
        selectDepartment,
    TResult Function(Resource resource)? selectResource,
    required TResult orElse(),
  }) {
    if (selectResource != null) {
      return selectResource(resource);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SetDefaultStation value) setDefaultStation,
    required TResult Function(ChangeStation value) changeStation,
    required TResult Function(SelectDepartment value) selectDepartment,
    required TResult Function(SelectResource value) selectResource,
  }) {
    return selectResource(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SetDefaultStation value)? setDefaultStation,
    TResult? Function(ChangeStation value)? changeStation,
    TResult? Function(SelectDepartment value)? selectDepartment,
    TResult? Function(SelectResource value)? selectResource,
  }) {
    return selectResource?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetDefaultStation value)? setDefaultStation,
    TResult Function(ChangeStation value)? changeStation,
    TResult Function(SelectDepartment value)? selectDepartment,
    TResult Function(SelectResource value)? selectResource,
    required TResult orElse(),
  }) {
    if (selectResource != null) {
      return selectResource(this);
    }
    return orElse();
  }
}

abstract class SelectResource implements ApplicationEvent {
  const factory SelectResource(final Resource resource) = _$SelectResourceImpl;

  Resource get resource;

  /// Create a copy of ApplicationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectResourceImplCopyWith<_$SelectResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ApplicationState {
  Station? get station => throw _privateConstructorUsedError;
  List<SubIssueList>? get deptIssueList => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  Resource? get resource => throw _privateConstructorUsedError;

  /// Create a copy of ApplicationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApplicationStateCopyWith<ApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationStateCopyWith<$Res> {
  factory $ApplicationStateCopyWith(
          ApplicationState value, $Res Function(ApplicationState) then) =
      _$ApplicationStateCopyWithImpl<$Res, ApplicationState>;
  @useResult
  $Res call(
      {Station? station,
      List<SubIssueList>? deptIssueList,
      String? color,
      Resource? resource});

  $StationCopyWith<$Res>? get station;
  $ResourceCopyWith<$Res>? get resource;
}

/// @nodoc
class _$ApplicationStateCopyWithImpl<$Res, $Val extends ApplicationState>
    implements $ApplicationStateCopyWith<$Res> {
  _$ApplicationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApplicationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = freezed,
    Object? deptIssueList = freezed,
    Object? color = freezed,
    Object? resource = freezed,
  }) {
    return _then(_value.copyWith(
      station: freezed == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as Station?,
      deptIssueList: freezed == deptIssueList
          ? _value.deptIssueList
          : deptIssueList // ignore: cast_nullable_to_non_nullable
              as List<SubIssueList>?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as Resource?,
    ) as $Val);
  }

  /// Create a copy of ApplicationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StationCopyWith<$Res>? get station {
    if (_value.station == null) {
      return null;
    }

    return $StationCopyWith<$Res>(_value.station!, (value) {
      return _then(_value.copyWith(station: value) as $Val);
    });
  }

  /// Create a copy of ApplicationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResourceCopyWith<$Res>? get resource {
    if (_value.resource == null) {
      return null;
    }

    return $ResourceCopyWith<$Res>(_value.resource!, (value) {
      return _then(_value.copyWith(resource: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApplicationStateImplCopyWith<$Res>
    implements $ApplicationStateCopyWith<$Res> {
  factory _$$ApplicationStateImplCopyWith(_$ApplicationStateImpl value,
          $Res Function(_$ApplicationStateImpl) then) =
      __$$ApplicationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Station? station,
      List<SubIssueList>? deptIssueList,
      String? color,
      Resource? resource});

  @override
  $StationCopyWith<$Res>? get station;
  @override
  $ResourceCopyWith<$Res>? get resource;
}

/// @nodoc
class __$$ApplicationStateImplCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res, _$ApplicationStateImpl>
    implements _$$ApplicationStateImplCopyWith<$Res> {
  __$$ApplicationStateImplCopyWithImpl(_$ApplicationStateImpl _value,
      $Res Function(_$ApplicationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApplicationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = freezed,
    Object? deptIssueList = freezed,
    Object? color = freezed,
    Object? resource = freezed,
  }) {
    return _then(_$ApplicationStateImpl(
      station: freezed == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as Station?,
      deptIssueList: freezed == deptIssueList
          ? _value._deptIssueList
          : deptIssueList // ignore: cast_nullable_to_non_nullable
              as List<SubIssueList>?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as Resource?,
    ));
  }
}

/// @nodoc

class _$ApplicationStateImpl extends _ApplicationState {
  _$ApplicationStateImpl(
      {this.station,
      final List<SubIssueList>? deptIssueList,
      this.color,
      required this.resource})
      : _deptIssueList = deptIssueList,
        super._();

  @override
  final Station? station;
  final List<SubIssueList>? _deptIssueList;
  @override
  List<SubIssueList>? get deptIssueList {
    final value = _deptIssueList;
    if (value == null) return null;
    if (_deptIssueList is EqualUnmodifiableListView) return _deptIssueList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? color;
  @override
  final Resource? resource;

  /// Create a copy of ApplicationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationStateImplCopyWith<_$ApplicationStateImpl> get copyWith =>
      __$$ApplicationStateImplCopyWithImpl<_$ApplicationStateImpl>(
          this, _$identity);
}

abstract class _ApplicationState extends ApplicationState {
  factory _ApplicationState(
      {final Station? station,
      final List<SubIssueList>? deptIssueList,
      final String? color,
      required final Resource? resource}) = _$ApplicationStateImpl;
  _ApplicationState._() : super._();

  @override
  Station? get station;
  @override
  List<SubIssueList>? get deptIssueList;
  @override
  String? get color;
  @override
  Resource? get resource;

  /// Create a copy of ApplicationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApplicationStateImplCopyWith<_$ApplicationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
