import 'dart:io';

import 'package:challenge/src/presentation/home_view/models/province/province.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:uuid/uuid.dart';

final notificationServiceProvider = Provider<NotificationService>((ref) {
  return NotificationService();
});

class NotificationService {
  factory NotificationService() => _service;
  static final _service = NotificationService._();
  NotificationService._();

  final _plugin = FlutterLocalNotificationsPlugin();
  final _channel = const AndroidNotificationChannel(
    'app_channel',
    'Provinces',
  );

  Future<void> initialize() async {
    if (kIsWeb || Platform.isLinux) {
      return;
    }
    tz.initializeTimeZones();
    final timeZoneName = await FlutterNativeTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(timeZoneName));
    const settings = InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: IOSInitializationSettings(),
      macOS: MacOSInitializationSettings(),
    );
    await _plugin.initialize(settings);
    await _requestPermissions();
    await _plugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_channel);
  }

  Future<void> _requestPermissions() async {
    // IOS
    _plugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );

    // MacOS
    _plugin
        .resolvePlatformSpecificImplementation<
            MacOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  Future<void> showNotification(Province province) async {
    _plugin.show(
      const Uuid().v4().hashCode,
      province.id,
      province.name,
      NotificationDetails(
        android: AndroidNotificationDetails(
          _channel.id,
          _channel.name,
          icon: '@mipmap/ic_launcher',
        ),
      ),
    );
  }
}
