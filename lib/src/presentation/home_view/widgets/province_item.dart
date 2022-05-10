import 'package:challenge/src/presentation/home_view/models/province/province.dart';
import 'package:challenge/src/services/database/app_storage.dart';
import 'package:challenge/src/services/local_notification/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProvinceItem extends HookConsumerWidget {
  final Province province;
  const ProvinceItem({Key? key, required this.province}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationService = ref.watch(notificationServiceProvider);
    final storageService = ref.watch(storageProvider);
    var selectedCity = useFuture(storageService.value?.getSelectedCity());

    return ListTile(
      selectedColor: Colors.red,
      selected: selectedCity.data == province.id,
      leading: Text(province.id),
      title: Text(province.name),
      onTap: () async {
        notificationService.showNotification(province);
        await storageService.value?.saveSelectedCity(province.id);
      },
    );
  }
}
