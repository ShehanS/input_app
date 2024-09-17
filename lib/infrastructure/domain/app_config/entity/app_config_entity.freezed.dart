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
  ClientInfo get client => throw _privateConstructorUsedError;
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
      ClientInfo client,
      dynamic masterData,
      dynamic config});

  $ClientInfoCopyWith<$Res> get client;
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
              as ClientInfo,
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
  $ClientInfoCopyWith<$Res> get client {
    return $ClientInfoCopyWith<$Res>(_value.client, (value) {
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
      ClientInfo client,
      dynamic masterData,
      dynamic config});

  @override
  $ClientInfoCopyWith<$Res> get client;
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
              as ClientInfo,
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
  final ClientInfo client;
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
      required final ClientInfo client,
      required final dynamic masterData,
      required final dynamic config}) = _$AppConfigEntityImpl;

  factory _AppConfigEntity.fromJson(Map<String, dynamic> json) =
      _$AppConfigEntityImpl.fromJson;

  @override
  String get configName;
  @override
  ClientInfo get client;
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

ClientInfo _$ClientInfoFromJson(Map<String, dynamic> json) {
  return _ClientInfo.fromJson(json);
}

/// @nodoc
mixin _$ClientInfo {
  String get id => throw _privateConstructorUsedError;
  String get clientName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get purchaseDate => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;
  String get licenseId => throw _privateConstructorUsedError;

  /// Serializes this ClientInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientInfoCopyWith<ClientInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientInfoCopyWith<$Res> {
  factory $ClientInfoCopyWith(
          ClientInfo value, $Res Function(ClientInfo) then) =
      _$ClientInfoCopyWithImpl<$Res, ClientInfo>;
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
class _$ClientInfoCopyWithImpl<$Res, $Val extends ClientInfo>
    implements $ClientInfoCopyWith<$Res> {
  _$ClientInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientInfo
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
abstract class _$$ClientInfoImplCopyWith<$Res>
    implements $ClientInfoCopyWith<$Res> {
  factory _$$ClientInfoImplCopyWith(
          _$ClientInfoImpl value, $Res Function(_$ClientInfoImpl) then) =
      __$$ClientInfoImplCopyWithImpl<$Res>;
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
class __$$ClientInfoImplCopyWithImpl<$Res>
    extends _$ClientInfoCopyWithImpl<$Res, _$ClientInfoImpl>
    implements _$$ClientInfoImplCopyWith<$Res> {
  __$$ClientInfoImplCopyWithImpl(
      _$ClientInfoImpl _value, $Res Function(_$ClientInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientInfo
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
    return _then(_$ClientInfoImpl(
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
class _$ClientInfoImpl implements _ClientInfo {
  _$ClientInfoImpl(
      {required this.id,
      required this.clientName,
      required this.email,
      required this.country,
      required this.purchaseDate,
      required this.imageURL,
      required this.licenseId});

  factory _$ClientInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientInfoImplFromJson(json);

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
    return 'ClientInfo(id: $id, clientName: $clientName, email: $email, country: $country, purchaseDate: $purchaseDate, imageURL: $imageURL, licenseId: $licenseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientInfoImpl &&
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

  /// Create a copy of ClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientInfoImplCopyWith<_$ClientInfoImpl> get copyWith =>
      __$$ClientInfoImplCopyWithImpl<_$ClientInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientInfoImplToJson(
      this,
    );
  }
}

abstract class _ClientInfo implements ClientInfo {
  factory _ClientInfo(
      {required final String id,
      required final String clientName,
      required final String email,
      required final String country,
      required final String purchaseDate,
      required final String imageURL,
      required final String licenseId}) = _$ClientInfoImpl;

  factory _ClientInfo.fromJson(Map<String, dynamic> json) =
      _$ClientInfoImpl.fromJson;

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

  /// Create a copy of ClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientInfoImplCopyWith<_$ClientInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
