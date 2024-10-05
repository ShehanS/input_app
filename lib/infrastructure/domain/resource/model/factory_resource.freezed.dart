// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'factory_resource.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FactoryResource _$FactoryResourceFromJson(Map<String, dynamic> json) {
  return _FactoryResource.fromJson(json);
}

/// @nodoc
mixin _$FactoryResource {
  String? get id => throw _privateConstructorUsedError;
  String? get listType => throw _privateConstructorUsedError;
  String? get orgKey => throw _privateConstructorUsedError;
  List<Resource>? get resources => throw _privateConstructorUsedError;

  /// Serializes this FactoryResource to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FactoryResource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FactoryResourceCopyWith<FactoryResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactoryResourceCopyWith<$Res> {
  factory $FactoryResourceCopyWith(
          FactoryResource value, $Res Function(FactoryResource) then) =
      _$FactoryResourceCopyWithImpl<$Res, FactoryResource>;
  @useResult
  $Res call(
      {String? id,
      String? listType,
      String? orgKey,
      List<Resource>? resources});
}

/// @nodoc
class _$FactoryResourceCopyWithImpl<$Res, $Val extends FactoryResource>
    implements $FactoryResourceCopyWith<$Res> {
  _$FactoryResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FactoryResource
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
              as List<Resource>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FactoryResourceImplCopyWith<$Res>
    implements $FactoryResourceCopyWith<$Res> {
  factory _$$FactoryResourceImplCopyWith(_$FactoryResourceImpl value,
          $Res Function(_$FactoryResourceImpl) then) =
      __$$FactoryResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? listType,
      String? orgKey,
      List<Resource>? resources});
}

/// @nodoc
class __$$FactoryResourceImplCopyWithImpl<$Res>
    extends _$FactoryResourceCopyWithImpl<$Res, _$FactoryResourceImpl>
    implements _$$FactoryResourceImplCopyWith<$Res> {
  __$$FactoryResourceImplCopyWithImpl(
      _$FactoryResourceImpl _value, $Res Function(_$FactoryResourceImpl) _then)
      : super(_value, _then);

  /// Create a copy of FactoryResource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? listType = freezed,
    Object? orgKey = freezed,
    Object? resources = freezed,
  }) {
    return _then(_$FactoryResourceImpl(
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
              as List<Resource>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FactoryResourceImpl implements _FactoryResource {
  _$FactoryResourceImpl(
      {this.id, this.listType, this.orgKey, final List<Resource>? resources})
      : _resources = resources;

  factory _$FactoryResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$FactoryResourceImplFromJson(json);

  @override
  final String? id;
  @override
  final String? listType;
  @override
  final String? orgKey;
  final List<Resource>? _resources;
  @override
  List<Resource>? get resources {
    final value = _resources;
    if (value == null) return null;
    if (_resources is EqualUnmodifiableListView) return _resources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FactoryResource(id: $id, listType: $listType, orgKey: $orgKey, resources: $resources)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FactoryResourceImpl &&
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

  /// Create a copy of FactoryResource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FactoryResourceImplCopyWith<_$FactoryResourceImpl> get copyWith =>
      __$$FactoryResourceImplCopyWithImpl<_$FactoryResourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FactoryResourceImplToJson(
      this,
    );
  }
}

abstract class _FactoryResource implements FactoryResource {
  factory _FactoryResource(
      {final String? id,
      final String? listType,
      final String? orgKey,
      final List<Resource>? resources}) = _$FactoryResourceImpl;

  factory _FactoryResource.fromJson(Map<String, dynamic> json) =
      _$FactoryResourceImpl.fromJson;

  @override
  String? get id;
  @override
  String? get listType;
  @override
  String? get orgKey;
  @override
  List<Resource>? get resources;

  /// Create a copy of FactoryResource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FactoryResourceImplCopyWith<_$FactoryResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Resource _$ResourceFromJson(Map<String, dynamic> json) {
  return _Resource.fromJson(json);
}

/// @nodoc
mixin _$Resource {
  String? get resourceName => throw _privateConstructorUsedError;
  String? get resourceCode => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get orgKey => throw _privateConstructorUsedError;
  int? get createAt => throw _privateConstructorUsedError;
  bool? get available => throw _privateConstructorUsedError;

  /// Serializes this Resource to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResourceCopyWith<Resource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceCopyWith<$Res> {
  factory $ResourceCopyWith(Resource value, $Res Function(Resource) then) =
      _$ResourceCopyWithImpl<$Res, Resource>;
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
class _$ResourceCopyWithImpl<$Res, $Val extends Resource>
    implements $ResourceCopyWith<$Res> {
  _$ResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Resource
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
abstract class _$$ResourceImplCopyWith<$Res>
    implements $ResourceCopyWith<$Res> {
  factory _$$ResourceImplCopyWith(
          _$ResourceImpl value, $Res Function(_$ResourceImpl) then) =
      __$$ResourceImplCopyWithImpl<$Res>;
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
class __$$ResourceImplCopyWithImpl<$Res>
    extends _$ResourceCopyWithImpl<$Res, _$ResourceImpl>
    implements _$$ResourceImplCopyWith<$Res> {
  __$$ResourceImplCopyWithImpl(
      _$ResourceImpl _value, $Res Function(_$ResourceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Resource
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
    return _then(_$ResourceImpl(
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
class _$ResourceImpl implements _Resource {
  _$ResourceImpl(
      {this.resourceName,
      this.resourceCode,
      this.description,
      this.note,
      this.location,
      this.orgKey,
      this.createAt,
      this.available});

  factory _$ResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResourceImplFromJson(json);

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
    return 'Resource(resourceName: $resourceName, resourceCode: $resourceCode, description: $description, note: $note, location: $location, orgKey: $orgKey, createAt: $createAt, available: $available)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceImpl &&
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

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceImplCopyWith<_$ResourceImpl> get copyWith =>
      __$$ResourceImplCopyWithImpl<_$ResourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourceImplToJson(
      this,
    );
  }
}

abstract class _Resource implements Resource {
  factory _Resource(
      {final String? resourceName,
      final String? resourceCode,
      final String? description,
      final String? note,
      final String? location,
      final String? orgKey,
      final int? createAt,
      final bool? available}) = _$ResourceImpl;

  factory _Resource.fromJson(Map<String, dynamic> json) =
      _$ResourceImpl.fromJson;

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

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResourceImplCopyWith<_$ResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
