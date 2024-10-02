// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'factory_resource_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FactoryResourceEntity _$FactoryResourceEntityFromJson(
    Map<String, dynamic> json) {
  return _FactoryResourceEntity.fromJson(json);
}

/// @nodoc
mixin _$FactoryResourceEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get listType => throw _privateConstructorUsedError;
  String? get orgKey => throw _privateConstructorUsedError;
  List<ResourceEntity>? get resources => throw _privateConstructorUsedError;

  /// Serializes this FactoryResourceEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FactoryResourceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FactoryResourceEntityCopyWith<FactoryResourceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactoryResourceEntityCopyWith<$Res> {
  factory $FactoryResourceEntityCopyWith(FactoryResourceEntity value,
          $Res Function(FactoryResourceEntity) then) =
      _$FactoryResourceEntityCopyWithImpl<$Res, FactoryResourceEntity>;
  @useResult
  $Res call(
      {String? id,
      String? listType,
      String? orgKey,
      List<ResourceEntity>? resources});
}

/// @nodoc
class _$FactoryResourceEntityCopyWithImpl<$Res,
        $Val extends FactoryResourceEntity>
    implements $FactoryResourceEntityCopyWith<$Res> {
  _$FactoryResourceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FactoryResourceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? listType = freezed,
    Object? orgKey = freezed,
    Object? resources = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      listType: freezed == listType
          ? _value.listType
          : listType // ignore: cast_nullable_to_non_nullable
              as String?,
      orgKey: freezed == orgKey
          ? _value.orgKey
          : orgKey // ignore: cast_nullable_to_non_nullable
              as String?,
      resources: freezed == resources
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<ResourceEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FactoryResourceEntityImplCopyWith<$Res>
    implements $FactoryResourceEntityCopyWith<$Res> {
  factory _$$FactoryResourceEntityImplCopyWith(
          _$FactoryResourceEntityImpl value,
          $Res Function(_$FactoryResourceEntityImpl) then) =
      __$$FactoryResourceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? listType,
      String? orgKey,
      List<ResourceEntity>? resources});
}

/// @nodoc
class __$$FactoryResourceEntityImplCopyWithImpl<$Res>
    extends _$FactoryResourceEntityCopyWithImpl<$Res,
        _$FactoryResourceEntityImpl>
    implements _$$FactoryResourceEntityImplCopyWith<$Res> {
  __$$FactoryResourceEntityImplCopyWithImpl(_$FactoryResourceEntityImpl _value,
      $Res Function(_$FactoryResourceEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of FactoryResourceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? listType = freezed,
    Object? orgKey = freezed,
    Object? resources = freezed,
  }) {
    return _then(_$FactoryResourceEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      listType: freezed == listType
          ? _value.listType
          : listType // ignore: cast_nullable_to_non_nullable
              as String?,
      orgKey: freezed == orgKey
          ? _value.orgKey
          : orgKey // ignore: cast_nullable_to_non_nullable
              as String?,
      resources: freezed == resources
          ? _value._resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<ResourceEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FactoryResourceEntityImpl implements _FactoryResourceEntity {
  _$FactoryResourceEntityImpl(
      {this.id,
      this.listType,
      this.orgKey,
      final List<ResourceEntity>? resources})
      : _resources = resources;

  factory _$FactoryResourceEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$FactoryResourceEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? listType;
  @override
  final String? orgKey;
  final List<ResourceEntity>? _resources;
  @override
  List<ResourceEntity>? get resources {
    final value = _resources;
    if (value == null) return null;
    if (_resources is EqualUnmodifiableListView) return _resources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FactoryResourceEntity(id: $id, listType: $listType, orgKey: $orgKey, resources: $resources)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FactoryResourceEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.listType, listType) ||
                other.listType == listType) &&
            (identical(other.orgKey, orgKey) || other.orgKey == orgKey) &&
            const DeepCollectionEquality()
                .equals(other._resources, _resources));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, listType, orgKey,
      const DeepCollectionEquality().hash(_resources));

  /// Create a copy of FactoryResourceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FactoryResourceEntityImplCopyWith<_$FactoryResourceEntityImpl>
      get copyWith => __$$FactoryResourceEntityImplCopyWithImpl<
          _$FactoryResourceEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FactoryResourceEntityImplToJson(
      this,
    );
  }
}

abstract class _FactoryResourceEntity implements FactoryResourceEntity {
  factory _FactoryResourceEntity(
      {final String? id,
      final String? listType,
      final String? orgKey,
      final List<ResourceEntity>? resources}) = _$FactoryResourceEntityImpl;

  factory _FactoryResourceEntity.fromJson(Map<String, dynamic> json) =
      _$FactoryResourceEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get listType;
  @override
  String? get orgKey;
  @override
  List<ResourceEntity>? get resources;

  /// Create a copy of FactoryResourceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FactoryResourceEntityImplCopyWith<_$FactoryResourceEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ResourceEntity _$ResourceEntityFromJson(Map<String, dynamic> json) {
  return _ResourceEntity.fromJson(json);
}

/// @nodoc
mixin _$ResourceEntity {
  String? get resourceName => throw _privateConstructorUsedError;
  String? get resourceCode => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get orgKey => throw _privateConstructorUsedError;
  int? get createAt => throw _privateConstructorUsedError;
  bool? get available => throw _privateConstructorUsedError;

  /// Serializes this ResourceEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResourceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResourceEntityCopyWith<ResourceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceEntityCopyWith<$Res> {
  factory $ResourceEntityCopyWith(
          ResourceEntity value, $Res Function(ResourceEntity) then) =
      _$ResourceEntityCopyWithImpl<$Res, ResourceEntity>;
  @useResult
  $Res call(
      {String? resourceName,
      String? resourceCode,
      String? description,
      String? note,
      String? location,
      String? orgKey,
      int? createAt,
      bool? available});
}

/// @nodoc
class _$ResourceEntityCopyWithImpl<$Res, $Val extends ResourceEntity>
    implements $ResourceEntityCopyWith<$Res> {
  _$ResourceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResourceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceName = freezed,
    Object? resourceCode = freezed,
    Object? description = freezed,
    Object? note = freezed,
    Object? location = freezed,
    Object? orgKey = freezed,
    Object? createAt = freezed,
    Object? available = freezed,
  }) {
    return _then(_value.copyWith(
      resourceName: freezed == resourceName
          ? _value.resourceName
          : resourceName // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceCode: freezed == resourceCode
          ? _value.resourceCode
          : resourceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      orgKey: freezed == orgKey
          ? _value.orgKey
          : orgKey // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as int?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourceEntityImplCopyWith<$Res>
    implements $ResourceEntityCopyWith<$Res> {
  factory _$$ResourceEntityImplCopyWith(_$ResourceEntityImpl value,
          $Res Function(_$ResourceEntityImpl) then) =
      __$$ResourceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? resourceName,
      String? resourceCode,
      String? description,
      String? note,
      String? location,
      String? orgKey,
      int? createAt,
      bool? available});
}

/// @nodoc
class __$$ResourceEntityImplCopyWithImpl<$Res>
    extends _$ResourceEntityCopyWithImpl<$Res, _$ResourceEntityImpl>
    implements _$$ResourceEntityImplCopyWith<$Res> {
  __$$ResourceEntityImplCopyWithImpl(
      _$ResourceEntityImpl _value, $Res Function(_$ResourceEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResourceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceName = freezed,
    Object? resourceCode = freezed,
    Object? description = freezed,
    Object? note = freezed,
    Object? location = freezed,
    Object? orgKey = freezed,
    Object? createAt = freezed,
    Object? available = freezed,
  }) {
    return _then(_$ResourceEntityImpl(
      resourceName: freezed == resourceName
          ? _value.resourceName
          : resourceName // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceCode: freezed == resourceCode
          ? _value.resourceCode
          : resourceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      orgKey: freezed == orgKey
          ? _value.orgKey
          : orgKey // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as int?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResourceEntityImpl implements _ResourceEntity {
  _$ResourceEntityImpl(
      {this.resourceName,
      this.resourceCode,
      this.description,
      this.note,
      this.location,
      this.orgKey,
      this.createAt,
      this.available});

  factory _$ResourceEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResourceEntityImplFromJson(json);

  @override
  final String? resourceName;
  @override
  final String? resourceCode;
  @override
  final String? description;
  @override
  final String? note;
  @override
  final String? location;
  @override
  final String? orgKey;
  @override
  final int? createAt;
  @override
  final bool? available;

  @override
  String toString() {
    return 'ResourceEntity(resourceName: $resourceName, resourceCode: $resourceCode, description: $description, note: $note, location: $location, orgKey: $orgKey, createAt: $createAt, available: $available)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceEntityImpl &&
            (identical(other.resourceName, resourceName) ||
                other.resourceName == resourceName) &&
            (identical(other.resourceCode, resourceCode) ||
                other.resourceCode == resourceCode) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.orgKey, orgKey) || other.orgKey == orgKey) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.available, available) ||
                other.available == available));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, resourceName, resourceCode,
      description, note, location, orgKey, createAt, available);

  /// Create a copy of ResourceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceEntityImplCopyWith<_$ResourceEntityImpl> get copyWith =>
      __$$ResourceEntityImplCopyWithImpl<_$ResourceEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourceEntityImplToJson(
      this,
    );
  }
}

abstract class _ResourceEntity implements ResourceEntity {
  factory _ResourceEntity(
      {final String? resourceName,
      final String? resourceCode,
      final String? description,
      final String? note,
      final String? location,
      final String? orgKey,
      final int? createAt,
      final bool? available}) = _$ResourceEntityImpl;

  factory _ResourceEntity.fromJson(Map<String, dynamic> json) =
      _$ResourceEntityImpl.fromJson;

  @override
  String? get resourceName;
  @override
  String? get resourceCode;
  @override
  String? get description;
  @override
  String? get note;
  @override
  String? get location;
  @override
  String? get orgKey;
  @override
  int? get createAt;
  @override
  bool? get available;

  /// Create a copy of ResourceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResourceEntityImplCopyWith<_$ResourceEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
