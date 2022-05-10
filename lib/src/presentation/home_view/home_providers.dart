import 'package:challenge/src/presentation/home_view/home_state_notifier.dart';
import 'package:challenge/src/presentation/home_view/models/home_state/home_state.dart';
import 'package:challenge/src/services/server/api_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'models/province/province.dart';

final homeStateNotifierProvider =
    StateNotifierProvider<HomeStateNotifier, HomeState>((ref) {
  final api = ref.watch(apiProvider);
  return HomeStateNotifier(api);
});

final filteredProvinceProvider =
    Provider.autoDispose.family<List<Province>, String>((ref, term) {
  final provinces = ref.watch(homeStateNotifierProvider);
  return provinces.provinces.where((e) => e.name.contains(term)).toList();
});
