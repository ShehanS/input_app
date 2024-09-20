// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppConfigEntity _$AppConfigEntityFromJson(Map<String, dynamic> json) {
  return _AppConfigEntity.fromJson(json);
}

/// @nodoc
mixin _$AppConfigEntity {
  String get configName => throw _privateConstructorUsedError;
  ClientInfoEntity get client => throw _privateConstructorUsedError;
  dynamic get masterData => throw _privateConstructorUsedError;
  dynamic get config => throw _privateConstructorUsedError;

  /// Serializes this AppConfigEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppConfigEntityCopyWith<AppConfigEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigEntityCopyWith<$Res> {
  factory $AppConfigEntityCopyWith(
          AppConfigEntity value, $Res Function(AppConfigEntity) then) =
      _$AppConfigEntityCopyWithImpl<$Res, AppConfigEntity>;
  @useResult
  $Res call(
      {String configName,
      ClientInfoEntity client,
      dynamic masterData,
      dynamic config});

  $ClientInfoEntityCopyWith<$Res> get client;
}

/// @nodoc
class _$AppConfigEntityCopyWithImpl<$Res, $Val extends AppConfigEntity>
    implements $AppConfigEntityCopyWith<$Res> {
  _$AppConfigEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? configName = null,
    Object? client = null,
    Object? masterData = freezed,
    Object? config = freezed,
  }) {
    return _then(_value.copyWith(
      configName: null == configName
          ? _value.configName
          : configName // ignore: cast_nullable_to_non_nullable
              as String,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ClientInfoEntity,
      masterData: freezed == masterData
          ? _value.masterData
          : masterData // ignore: cast_nullable_to_non_nullable
              as dynamic,
      config: freezed == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  /// Create a copy of AppConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClientInfoEntityCopyWith<$Res> get client {
    return $ClientInfoEntityCopyWith<$Res>(_value.client, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppConfigEntityImplCopyWith<$Res>
    implements $AppConfigEntityCopyWith<$Res> {
  factory _$$AppConfigEntityImplCopyWith(_$AppConfigEntityImpl value,
          $Res Function(_$AppConfigEntityImpl) then) =
      __$$AppConfigEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String configName,
      ClientInfoEntity client,
      dynamic masterData,
      dynamic config});

  @override
  $ClientInfoEntityCopyWith<$Res> get client;
}

/// @nodoc
class __$$AppConfigEntityImplCopyWithImpl<$Res>
    extends _$AppConfigEntityCopyWithImpl<$Res, _$AppConfigEntityImpl>
    implements _$$AppConfigEntityImplCopyWith<$Res> {
  __$$AppConfigEntityImplCopyWithImpl(
      _$AppConfigEntityImpl _value, $Res Function(_$AppConfigEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? configName = null,
    Object? client = null,
    Object? masterData = freezed,
    Object? config = freezed,
  }) {
    return _then(_$AppConfigEntityImpl(
      configName: null == configName
          ? _value.configName
          : configName // ignore: cast_nullable_to_non_nullable
              as String,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ClientInfoEntity,
      masterData: freezed == masterData
          ? _value.masterData
          : masterData // ignore: cast_nullable_to_non_nullable
              as dynamic,
      config: freezed == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppConfigEntityImpl implements _AppConfigEntity {
  _$AppConfigEntityImpl(
      {required this.configName,
      required this.client,
      required this.masterData,
      required this.config});

  factory _$AppConfigEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppConfigEntityImplFromJson(json);

  @override
  final String configName;
  @override
  final ClientInfoEntity client;
  @override
  final dynamic masterData;
  @override
  final dynamic config;

  @override
  String toString() {
    return 'AppConfigEntity(configName: $configName, client: $client, masterData: $masterData, config: $config)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppConfigEntityImpl &&
            (identical(other.configName, configName) ||
                other.configName == configName) &&
            (identical(other.client, client) || other.client == client) &&
            const DeepCollectionEquality()
                .equals(other.masterData, masterData) &&
            const DeepCollectionEquality().equals(other.config, config));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      configName,
      client,
      const DeepCollectionEquality().hash(masterData),
      const DeepCollectionEquality().hash(config));

  /// Create a copy of AppConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppConfigEntityImplCopyWith<_$AppConfigEntityImpl> get copyWith =>
      __$$AppConfigEntityImplCopyWithImpl<_$AppConfigEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppConfigEntityImplToJson(
      this,
    );
  }
}

abstract class _AppConfigEntity implements AppConfigEntity {
  factory _AppConfigEntity(
      {required final String configName,
      required final ClientInfoEntity client,
      required final dynamic masterData,
      required final dynamic config}) = _$AppConfigEntityImpl;

  factory _AppConfigEntity.fromJson(Map<String, dynamic> json) =
      _$AppConfigEntityImpl.fromJson;

  @override
  String get configName;
  @override
  ClientInfoEntity get client;
  @override
  dynamic get masterData;
  @override
  dynamic get config;

  /// Create a copy of AppConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppConfigEntityImplCopyWith<_$AppConfigEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClientInfoEntity _$ClientInfoEntityFromJson(Map<String, dynamic> json) {
  return _ClientInfoEntity.fromJson(json);
}

/// @nodoc
mixin _$ClientInfoEntity {
  String get id => throw _privateConstructorUsedError;
  String get clientName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get purchaseDate => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;
  String get licenseId => throw _privateConstructorUsedError;

  /// Serializes this ClientInfoEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClientInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientInfoEntityCopyWith<ClientInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientInfoEntityCopyWith<$Res> {
  factory $ClientInfoEntityCopyWith(
          ClientInfoEntity value, $Res Function(ClientInfoEntity) then) =
      _$ClientInfoEntityCopyWithImpl<$Res, ClientInfoEntity>;
  @useResult
  $Res call(
      {String id,
      String clientName,
      String email,
      String country,
      String purchaseDate,
      String imageURL,
      String licenseId});
}

/// @nodoc
class _$ClientInfoEntityCopyWithImpl<$Res, $Val extends ClientInfoEntity>
    implements $ClientInfoEntityCopyWith<$Res> {
  _$ClientInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clientName = null,
    Object? email = null,
    Object? country = null,
    Object? purchaseDate = null,
    Object? imageURL = null,
    Object? licenseId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseDate: null == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      licenseId: null == licenseId
          ? _value.licenseId
          : licenseId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientInfoEntityImplCopyWith<$Res>
    implements $ClientInfoEntityCopyWith<$Res> {
  factory _$$ClientInfoEntityImplCopyWith(_$ClientInfoEntityImpl value,
          $Res Function(_$ClientInfoEntityImpl) then) =
      __$$ClientInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String clientName,
      String email,
      String country,
      String purchaseDate,
      String imageURL,
      String licenseId});
}

/// @nodoc
class __$$ClientInfoEntityImplCopyWithImpl<$Res>
    extends _$ClientInfoEntityCopyWithImpl<$Res, _$ClientInfoEntityImpl>
    implements _$$ClientInfoEntityImplCopyWith<$Res> {
  __$$ClientInfoEntityImplCopyWithImpl(_$ClientInfoEntityImpl _value,
      $Res Function(_$ClientInfoEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clientName = null,
    Object? email = null,
    Object? country = null,
    Object? purchaseDate = null,
    Object? imageURL = null,
    Object? licenseId = null,
  }) {
    return _then(_$ClientInfoEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseDate: null == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      licenseId: null == licenseId
          ? _value.licenseId
          : licenseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientInfoEntityImpl implements _ClientInfoEntity {
  _$ClientInfoEntityImpl(
      {required this.id,
      required this.clientName,
      required this.email,
      required this.country,
      required this.purchaseDate,
      required this.imageURL,
      required this.licenseId});

  factory _$ClientInfoEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientInfoEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String clientName;
  @override
  final String email;
  @override
  final String country;
  @override
  final String purchaseDate;
  @override
  final String imageURL;
  @override
  final String licenseId;

  @override
  String toString() {
    return 'ClientInfoEntity(id: $id, clientName: $clientName, email: $email, country: $country, purchaseDate: $purchaseDate, imageURL: $imageURL, licenseId: $licenseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientInfoEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.purchaseDate, purchaseDate) ||
                other.purchaseDate == purchaseDate) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.licenseId, licenseId) ||
                other.licenseId == licenseId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, clientName, email, country,
      purchaseDate, imageURL, licenseId);

  /// Create a copy of ClientInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientInfoEntityImplCopyWith<_$ClientInfoEntityImpl> get copyWith =>
      __$$ClientInfoEntityImplCopyWithImpl<_$ClientInfoEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientInfoEntityImplToJson(
      this,
    );
  }
}

abstract class _ClientInfoEntity implements ClientInfoEntity {
  factory _ClientInfoEntity(
      {required final String id,
      required final String clientName,
      required final String email,
      required final String country,
      required final String purchaseDate,
      required final String imageURL,
      required final String licenseId}) = _$ClientInfoEntityImpl;

  factory _ClientInfoEntity.fromJson(Map<String, dynamic> json) =
      _$ClientInfoEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get clientName;
  @override
  String get email;
  @override
  String get country;
  @override
  String get purchaseDate;
  @override
  String get imageURL;
  @override
  String get licenseId;

  /// Create a copy of ClientInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientInfoEntityImplCopyWith<_$ClientInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
