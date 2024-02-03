// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class NotificationsApi {
//   static final _notifications = FlutterLocalNotificationsPlugin();

//   static void initialize() {
//     // Initialization setting for android
//     const InitializationSettings initializationSettingsAndroid =
//         InitializationSettings(
//       android: AndroidInitializationSettings("@drawable/ic_launcher"),
//     );
//     _notifications.initialize(
//       initializationSettingsAndroid,
//       // to handle event when we receive notification
//       onDidReceiveNotificationResponse: (details) {
//         if (details.input != null) {}
//       },
//     );
//   }

//   static Future _notificationDetails() async {
//     return const NotificationDetails(
//         android: AndroidNotificationDetails(
//           'channel Id',
//           'channel Name',
//           importance: Importance.max,
//         ),
//         iOS: DarwinNotificationDetails());
//   }

//   static Future showNotification({
//     int id = 0,
//     String? title,
//     String? body,
//     String? payload,
//   }) async {
//     _notifications.show(
//       id,
//       title,
//       body,
//       await _notificationDetails(),
//       payload: payload,
//     );
//   }
// }
