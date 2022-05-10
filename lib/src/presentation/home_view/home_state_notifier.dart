import 'package:challenge/src/presentation/home_view/models/home_state/home_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../services/server/api_service.dart';

class HomeStateNotifier extends StateNotifier<HomeState> {
  final ApiService _api;
  HomeStateNotifier(this._api) : super(HomeState()) {
    getProvinces();
  }

  Future<void> getProvinces() async {
    state = state.copyWith(isLoading: true);
    final provinces = await _api.getProvinces();
    state = state.copyWith(provinces: provinces, isLoading: false);
  }
}
