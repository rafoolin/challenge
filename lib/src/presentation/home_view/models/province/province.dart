import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'province.freezed.dart';
part 'province.g.dart';

@freezed
class Province with _$Province {
  factory Province({
    required String id,
    required String name,
    @JsonKey(name: 'province_id') required String provinceId,
  }) = _Province;

  factory Province.fromJson(Map<String, dynamic> json) =>
      _$ProvinceFromJson(json);
}
