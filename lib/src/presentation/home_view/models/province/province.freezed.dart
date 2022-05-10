// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'province.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Province _$ProvinceFromJson(Map<String, dynamic> json) {
  return _Province.fromJson(json);
}

/// @nodoc
mixin _$Province {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'province_id')
  String get provinceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinceCopyWith<Province> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceCopyWith<$Res> {
  factory $ProvinceCopyWith(Province value, $Res Function(Province) then) =
      _$ProvinceCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'province_id') String provinceId});
}

/// @nodoc
class _$ProvinceCopyWithImpl<$Res> implements $ProvinceCopyWith<$Res> {
  _$ProvinceCopyWithImpl(this._value, this._then);

  final Province _value;
  // ignore: unused_field
  final $Res Function(Province) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? provinceId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      provinceId: provinceId == freezed
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ProvinceCopyWith<$Res> implements $ProvinceCopyWith<$Res> {
  factory _$$_ProvinceCopyWith(
          _$_Province value, $Res Function(_$_Province) then) =
      __$$_ProvinceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'province_id') String provinceId});
}

/// @nodoc
class __$$_ProvinceCopyWithImpl<$Res> extends _$ProvinceCopyWithImpl<$Res>
    implements _$$_ProvinceCopyWith<$Res> {
  __$$_ProvinceCopyWithImpl(
      _$_Province _value, $Res Function(_$_Province) _then)
      : super(_value, (v) => _then(v as _$_Province));

  @override
  _$_Province get _value => super._value as _$_Province;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? provinceId = freezed,
  }) {
    return _then(_$_Province(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      provinceId: provinceId == freezed
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Province with DiagnosticableTreeMixin implements _Province {
  _$_Province(
      {required this.id,
      required this.name,
      @JsonKey(name: 'province_id') required this.provinceId});

  factory _$_Province.fromJson(Map<String, dynamic> json) =>
      _$$_ProvinceFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'province_id')
  final String provinceId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Province(id: $id, name: $name, provinceId: $provinceId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Province'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('provinceId', provinceId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Province &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.provinceId, provinceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(provinceId));

  @JsonKey(ignore: true)
  @override
  _$$_ProvinceCopyWith<_$_Province> get copyWith =>
      __$$_ProvinceCopyWithImpl<_$_Province>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProvinceToJson(this);
  }
}

abstract class _Province implements Province {
  factory _Province(
          {required final String id,
          required final String name,
          @JsonKey(name: 'province_id') required final String provinceId}) =
      _$_Province;

  factory _Province.fromJson(Map<String, dynamic> json) = _$_Province.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'province_id')
  String get provinceId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProvinceCopyWith<_$_Province> get copyWith =>
      throw _privateConstructorUsedError;
}
