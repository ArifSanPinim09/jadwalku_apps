import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;

class NotificationHelper {
  static final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static Future<void> initialize() async {
    const InitializationSettings initializationSettings =
        InitializationSettings(
            android: AndroidInitializationSettings('@mipmap/ic_launcher'));

    await _flutterLocalNotificationsPlugin.initialize(initializationSettings);
    tz.initializeTimeZones();
  }

  static Future<void> displayNotification(
      {int? id, required String title, required String body}) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'your channel id',
      'your channel name',
      // 'your channel description',
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker',
    );
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await _flutterLocalNotificationsPlugin.show(
      id ?? 0,
      title,
      body,
      platformChannelSpecifics,
      payload: 'item x',
    );
  }

  static Future<void> displayScheduledNotification(
      {required int id,
      required String title,
      required String body,
      DateTime? scheduledTime}) async {
    AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      id.toString(),
      title,
      // 'your channel description',
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker',
    );
    NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
  }

  // s scheduleNotification() async {
  //   await FlutterLocalNotificationsPlugin.zonedSchedule(
  //     0,
  //     '',
  //     '',
  //     tz.TZDateTime.now(tz.local).add(const Duration(seconds: 5)),
  //     const NotificationDetails(
  //         android: AndroidNotificationDetails(
  //       '',
  //       'name',
  //     )),
  //     androidAllowWhileIdle: true,
  //     uiLocalNotificationDateInterpretation:
  //         UILocalNotificationDateInterpretation.absoluteTime,
  //   );
  // }
}
