// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_dialog_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ErrorDialogProps _$ErrorDialogPropsFromJson(Map<String, dynamic> json) {
  return _ErrorDialogProps.fromJson(json);
}

/// @nodoc
mixin _$ErrorDialogProps {
  String get message => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isOpen => throw _privateConstructorUsedError;

  /// Serializes this ErrorDialogProps to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ErrorDialogProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorDialogPropsCopyWith<ErrorDialogProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDialogPropsCopyWith<$Res> {
  factory $ErrorDialogPropsCopyWith(
          ErrorDialogProps value, $Res Function(ErrorDialogProps) then) =
      _$ErrorDialogPropsCopyWithImpl<$Res, ErrorDialogProps>;
  @useResult
  $Res call({String message, String title, bool isOpen});
}

/// @nodoc
class _$ErrorDialogPropsCopyWithImpl<$Res, $Val extends ErrorDialogProps>
    implements $ErrorDialogPropsCopyWith<$Res> {
  _$ErrorDialogPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorDialogProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? title = null,
    Object? isOpen = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorDialogPropsImplCopyWith<$Res>
    implements $ErrorDialogPropsCopyWith<$Res> {
  factory _$$ErrorDialogPropsImplCopyWith(_$ErrorDialogPropsImpl value,
          $Res Function(_$ErrorDialogPropsImpl) then) =
      __$$ErrorDialogPropsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String title, bool isOpen});
}

/// @nodoc
class __$$ErrorDialogPropsImplCopyWithImpl<$Res>
    extends _$ErrorDialogPropsCopyWithImpl<$Res, _$ErrorDialogPropsImpl>
    implements _$$ErrorDialogPropsImplCopyWith<$Res> {
  __$$ErrorDialogPropsImplCopyWithImpl(_$ErrorDialogPropsImpl _value,
      $Res Function(_$ErrorDialogPropsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorDialogProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? title = null,
    Object? isOpen = null,
  }) {
    return _then(_$ErrorDialogPropsImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorDialogPropsImpl implements _ErrorDialogProps {
  _$ErrorDialogPropsImpl(
      {required this.message, required this.title, required this.isOpen});

  factory _$ErrorDialogPropsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorDialogPropsImplFromJson(json);

  @override
  final String message;
  @override
  final String title;
  @override
  final bool isOpen;

  @override
  String toString() {
    return 'ErrorDialogProps(message: $message, title: $title, isOpen: $isOpen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDialogPropsImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, title, isOpen);

  /// Create a copy of ErrorDialogProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDialogPropsImplCopyWith<_$ErrorDialogPropsImpl> get copyWith =>
      __$$ErrorDialogPropsImplCopyWithImpl<_$ErrorDialogPropsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorDialogPropsImplToJson(
      this,
    );
  }
}

abstract class _ErrorDialogProps implements ErrorDialogProps {
  factory _ErrorDialogProps(
      {required final String message,
      required final String title,
      required final bool isOpen}) = _$ErrorDialogPropsImpl;

  factory _ErrorDialogProps.fromJson(Map<String, dynamic> json) =
      _$ErrorDialogPropsImpl.fromJson;

  @override
  String get message;
  @override
  String get title;
  @override
  bool get isOpen;

  /// Create a copy of ErrorDialogProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorDialogPropsImplCopyWith<_$ErrorDialogPropsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
