// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issue_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IssueListEntity _$IssueListEntityFromJson(Map<String, dynamic> json) {
  return _IssueListEntity.fromJson(json);
}

/// @nodoc
mixin _$IssueListEntity {
  String get id => throw _privateConstructorUsedError;
  String? get listType => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get orgKey => throw _privateConstructorUsedError;
  String? get module => throw _privateConstructorUsedError;
  List<IssueList>? get issueList => throw _privateConstructorUsedError;

  /// Serializes this IssueListEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IssueListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IssueListEntityCopyWith<IssueListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueListEntityCopyWith<$Res> {
  factory $IssueListEntityCopyWith(
          IssueListEntity value, $Res Function(IssueListEntity) then) =
      _$IssueListEntityCopyWithImpl<$Res, IssueListEntity>;
  @useResult
  $Res call(
      {String id,
      String? listType,
      String? displayName,
      String? orgKey,
      String? module,
      List<IssueList>? issueList});
}

/// @nodoc
class _$IssueListEntityCopyWithImpl<$Res, $Val extends IssueListEntity>
    implements $IssueListEntityCopyWith<$Res> {
  _$IssueListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IssueListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? listType = freezed,
    Object? displayName = freezed,
    Object? orgKey = freezed,
    Object? module = freezed,
    Object? issueList = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      listType: freezed == listType
          ? _value.listType
          : listType // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      orgKey: freezed == orgKey
          ? _value.orgKey
          : orgKey // ignore: cast_nullable_to_non_nullable
              as String?,
      module: freezed == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as String?,
      issueList: freezed == issueList
          ? _value.issueList
          : issueList // ignore: cast_nullable_to_non_nullable
              as List<IssueList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IssueListEntityImplCopyWith<$Res>
    implements $IssueListEntityCopyWith<$Res> {
  factory _$$IssueListEntityImplCopyWith(_$IssueListEntityImpl value,
          $Res Function(_$IssueListEntityImpl) then) =
      __$$IssueListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? listType,
      String? displayName,
      String? orgKey,
      String? module,
      List<IssueList>? issueList});
}

/// @nodoc
class __$$IssueListEntityImplCopyWithImpl<$Res>
    extends _$IssueListEntityCopyWithImpl<$Res, _$IssueListEntityImpl>
    implements _$$IssueListEntityImplCopyWith<$Res> {
  __$$IssueListEntityImplCopyWithImpl(
      _$IssueListEntityImpl _value, $Res Function(_$IssueListEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of IssueListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? listType = freezed,
    Object? displayName = freezed,
    Object? orgKey = freezed,
    Object? module = freezed,
    Object? issueList = freezed,
  }) {
    return _then(_$IssueListEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      listType: freezed == listType
          ? _value.listType
          : listType // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      orgKey: freezed == orgKey
          ? _value.orgKey
          : orgKey // ignore: cast_nullable_to_non_nullable
              as String?,
      module: freezed == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as String?,
      issueList: freezed == issueList
          ? _value._issueList
          : issueList // ignore: cast_nullable_to_non_nullable
              as List<IssueList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IssueListEntityImpl implements _IssueListEntity {
  _$IssueListEntityImpl(
      {required this.id,
      this.listType,
      this.displayName,
      this.orgKey,
      this.module,
      final List<IssueList>? issueList})
      : _issueList = issueList;

  factory _$IssueListEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$IssueListEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String? listType;
  @override
  final String? displayName;
  @override
  final String? orgKey;
  @override
  final String? module;
  final List<IssueList>? _issueList;
  @override
  List<IssueList>? get issueList {
    final value = _issueList;
    if (value == null) return null;
    if (_issueList is EqualUnmodifiableListView) return _issueList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'IssueListEntity(id: $id, listType: $listType, displayName: $displayName, orgKey: $orgKey, module: $module, issueList: $issueList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IssueListEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.listType, listType) ||
                other.listType == listType) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.orgKey, orgKey) || other.orgKey == orgKey) &&
            (identical(other.module, module) || other.module == module) &&
            const DeepCollectionEquality()
                .equals(other._issueList, _issueList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, listType, displayName,
      orgKey, module, const DeepCollectionEquality().hash(_issueList));

  /// Create a copy of IssueListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IssueListEntityImplCopyWith<_$IssueListEntityImpl> get copyWith =>
      __$$IssueListEntityImplCopyWithImpl<_$IssueListEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IssueListEntityImplToJson(
      this,
    );
  }
}

abstract class _IssueListEntity implements IssueListEntity {
  factory _IssueListEntity(
      {required final String id,
      final String? listType,
      final String? displayName,
      final String? orgKey,
      final String? module,
      final List<IssueList>? issueList}) = _$IssueListEntityImpl;

  factory _IssueListEntity.fromJson(Map<String, dynamic> json) =
      _$IssueListEntityImpl.fromJson;

  @override
  String get id;
  @override
  String? get listType;
  @override
  String? get displayName;
  @override
  String? get orgKey;
  @override
  String? get module;
  @override
  List<IssueList>? get issueList;

  /// Create a copy of IssueListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IssueListEntityImplCopyWith<_$IssueListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IssueList _$IssueListFromJson(Map<String, dynamic> json) {
  return _IssueList.fromJson(json);
}

/// @nodoc
mixin _$IssueList {
  String? get categoryType => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get issueCode => throw _privateConstructorUsedError;
  String? get issueName => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<IssueList>? get issueList => throw _privateConstructorUsedError;

  /// Serializes this IssueList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IssueList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IssueListCopyWith<IssueList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueListCopyWith<$Res> {
  factory $IssueListCopyWith(IssueList value, $Res Function(IssueList) then) =
      _$IssueListCopyWithImpl<$Res, IssueList>;
  @useResult
  $Res call(
      {String? categoryType,
      String? name,
      int? level,
      String? displayName,
      String? issueCode,
      String? issueName,
      String? description,
      List<IssueList>? issueList});
}

/// @nodoc
class _$IssueListCopyWithImpl<$Res, $Val extends IssueList>
    implements $IssueListCopyWith<$Res> {
  _$IssueListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IssueList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryType = freezed,
    Object? name = freezed,
    Object? level = freezed,
    Object? displayName = freezed,
    Object? issueCode = freezed,
    Object? issueName = freezed,
    Object? description = freezed,
    Object? issueList = freezed,
  }) {
    return _then(_value.copyWith(
      categoryType: freezed == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      issueCode: freezed == issueCode
          ? _value.issueCode
          : issueCode // ignore: cast_nullable_to_non_nullable
              as String?,
      issueName: freezed == issueName
          ? _value.issueName
          : issueName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      issueList: freezed == issueList
          ? _value.issueList
          : issueList // ignore: cast_nullable_to_non_nullable
              as List<IssueList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IssueListImplCopyWith<$Res>
    implements $IssueListCopyWith<$Res> {
  factory _$$IssueListImplCopyWith(
          _$IssueListImpl value, $Res Function(_$IssueListImpl) then) =
      __$$IssueListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? categoryType,
      String? name,
      int? level,
      String? displayName,
      String? issueCode,
      String? issueName,
      String? description,
      List<IssueList>? issueList});
}

/// @nodoc
class __$$IssueListImplCopyWithImpl<$Res>
    extends _$IssueListCopyWithImpl<$Res, _$IssueListImpl>
    implements _$$IssueListImplCopyWith<$Res> {
  __$$IssueListImplCopyWithImpl(
      _$IssueListImpl _value, $Res Function(_$IssueListImpl) _then)
      : super(_value, _then);

  /// Create a copy of IssueList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryType = freezed,
    Object? name = freezed,
    Object? level = freezed,
    Object? displayName = freezed,
    Object? issueCode = freezed,
    Object? issueName = freezed,
    Object? description = freezed,
    Object? issueList = freezed,
  }) {
    return _then(_$IssueListImpl(
      categoryType: freezed == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      issueCode: freezed == issueCode
          ? _value.issueCode
          : issueCode // ignore: cast_nullable_to_non_nullable
              as String?,
      issueName: freezed == issueName
          ? _value.issueName
          : issueName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      issueList: freezed == issueList
          ? _value._issueList
          : issueList // ignore: cast_nullable_to_non_nullable
              as List<IssueList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IssueListImpl implements _IssueList {
  _$IssueListImpl(
      {this.categoryType,
      this.name,
      this.level,
      this.displayName,
      this.issueCode,
      this.issueName,
      this.description,
      final List<IssueList>? issueList})
      : _issueList = issueList;

  factory _$IssueListImpl.fromJson(Map<String, dynamic> json) =>
      _$$IssueListImplFromJson(json);

  @override
  final String? categoryType;
  @override
  final String? name;
  @override
  final int? level;
  @override
  final String? displayName;
  @override
  final String? issueCode;
  @override
  final String? issueName;
  @override
  final String? description;
  final List<IssueList>? _issueList;
  @override
  List<IssueList>? get issueList {
    final value = _issueList;
    if (value == null) return null;
    if (_issueList is EqualUnmodifiableListView) return _issueList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'IssueList(categoryType: $categoryType, name: $name, level: $level, displayName: $displayName, issueCode: $issueCode, issueName: $issueName, description: $description, issueList: $issueList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IssueListImpl &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.issueCode, issueCode) ||
                other.issueCode == issueCode) &&
            (identical(other.issueName, issueName) ||
                other.issueName == issueName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._issueList, _issueList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      categoryType,
      name,
      level,
      displayName,
      issueCode,
      issueName,
      description,
      const DeepCollectionEquality().hash(_issueList));

  /// Create a copy of IssueList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IssueListImplCopyWith<_$IssueListImpl> get copyWith =>
      __$$IssueListImplCopyWithImpl<_$IssueListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IssueListImplToJson(
      this,
    );
  }
}

abstract class _IssueList implements IssueList {
  factory _IssueList(
      {final String? categoryType,
      final String? name,
      final int? level,
      final String? displayName,
      final String? issueCode,
      final String? issueName,
      final String? description,
      final List<IssueList>? issueList}) = _$IssueListImpl;

  factory _IssueList.fromJson(Map<String, dynamic> json) =
      _$IssueListImpl.fromJson;

  @override
  String? get categoryType;
  @override
  String? get name;
  @override
  int? get level;
  @override
  String? get displayName;
  @override
  String? get issueCode;
  @override
  String? get issueName;
  @override
  String? get description;
  @override
  List<IssueList>? get issueList;

  /// Create a copy of IssueList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IssueListImplCopyWith<_$IssueListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
