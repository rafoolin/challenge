import 'dart:convert';

import 'package:challenge/src/presentation/home_view/models/province/province.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final apiProvider = Provider<ApiService>((ref) => ApiService());

class ApiService {
  final _dio = Dio(
    BaseOptions(
      headers: {'Accept': 'application/json; charset=UTF-8;'},
    ),
  );
  ApiService();

  Future<List<Province>> getProvinces() async {
    final response = await _dio.get('http://netbg.ir/scty.php');
    final list = jsonDecode(response.data) as List;
    return list.map((e) => Province.fromJson(e)).toList();
  }
}
