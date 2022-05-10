import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final _cityBoxProvider = FutureProvider<Box>((ref) async {
  var box = await Hive.openBox('cities');
  return box;
});

final storageProvider = FutureProvider<AppStorage>((ref) async {
  final boxFuture = ref.watch(_cityBoxProvider);
  return AppStorage(boxFuture.value);
});

class AppStorage {
  final Box? _box;
  AppStorage(this._box);

  Future<void> saveSelectedCity(String id) async {
    if (_box == null) return;
    await _box!.put('selected_city', id);
  }

  Future<String?> getSelectedCity() async {
    if (_box == null) return null;
    return await _box!.get('selected_city');
  }
}
