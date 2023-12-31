// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Configuration _$ConfigurationFromJson(Map<String, dynamic> json) {
  return _Configuration.fromJson(json);
}

/// @nodoc
mixin _$Configuration {
  String get targetDirectory => throw _privateConstructorUsedError;
  String get lookDirectory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigurationCopyWith<Configuration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigurationCopyWith<$Res> {
  factory $ConfigurationCopyWith(
          Configuration value, $Res Function(Configuration) then) =
      _$ConfigurationCopyWithImpl<$Res, Configuration>;
  @useResult
  $Res call({String targetDirectory, String lookDirectory});
}

/// @nodoc
class _$ConfigurationCopyWithImpl<$Res, $Val extends Configuration>
    implements $ConfigurationCopyWith<$Res> {
  _$ConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetDirectory = null,
    Object? lookDirectory = null,
  }) {
    return _then(_value.copyWith(
      targetDirectory: null == targetDirectory
          ? _value.targetDirectory
          : targetDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      lookDirectory: null == lookDirectory
          ? _value.lookDirectory
          : lookDirectory // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConfigurationCopyWith<$Res>
    implements $ConfigurationCopyWith<$Res> {
  factory _$$_ConfigurationCopyWith(
          _$_Configuration value, $Res Function(_$_Configuration) then) =
      __$$_ConfigurationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String targetDirectory, String lookDirectory});
}

/// @nodoc
class __$$_ConfigurationCopyWithImpl<$Res>
    extends _$ConfigurationCopyWithImpl<$Res, _$_Configuration>
    implements _$$_ConfigurationCopyWith<$Res> {
  __$$_ConfigurationCopyWithImpl(
      _$_Configuration _value, $Res Function(_$_Configuration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetDirectory = null,
    Object? lookDirectory = null,
  }) {
    return _then(_$_Configuration(
      targetDirectory: null == targetDirectory
          ? _value.targetDirectory
          : targetDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      lookDirectory: null == lookDirectory
          ? _value.lookDirectory
          : lookDirectory // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Configuration implements _Configuration {
  const _$_Configuration(
      {required this.targetDirectory, required this.lookDirectory});

  factory _$_Configuration.fromJson(Map<String, dynamic> json) =>
      _$$_ConfigurationFromJson(json);

  @override
  final String targetDirectory;
  @override
  final String lookDirectory;

  @override
  String toString() {
    return 'Configuration(targetDirectory: $targetDirectory, lookDirectory: $lookDirectory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Configuration &&
            (identical(other.targetDirectory, targetDirectory) ||
                other.targetDirectory == targetDirectory) &&
            (identical(other.lookDirectory, lookDirectory) ||
                other.lookDirectory == lookDirectory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, targetDirectory, lookDirectory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfigurationCopyWith<_$_Configuration> get copyWith =>
      __$$_ConfigurationCopyWithImpl<_$_Configuration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfigurationToJson(
      this,
    );
  }
}

abstract class _Configuration implements Configuration {
  const factory _Configuration(
      {required final String targetDirectory,
      required final String lookDirectory}) = _$_Configuration;

  factory _Configuration.fromJson(Map<String, dynamic> json) =
      _$_Configuration.fromJson;

  @override
  String get targetDirectory;
  @override
  String get lookDirectory;
  @override
  @JsonKey(ignore: true)
  _$$_ConfigurationCopyWith<_$_Configuration> get copyWith =>
      throw _privateConstructorUsedError;
}
