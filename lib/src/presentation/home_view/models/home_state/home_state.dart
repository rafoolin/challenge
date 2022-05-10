import 'package:challenge/src/presentation/home_view/models/province/province.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default(true) bool isLoading,
    @Default([]) List<Province> provinces,
    String? selectedCity,
  }) = _HomeState;
}
