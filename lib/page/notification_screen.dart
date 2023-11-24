import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  static const String name = '/notification-screen';

  @override
  Widget build(BuildContext context) {
    //mostrar os dados da notificações
    final RemoteMessage message =
        ModalRoute.of(context)!.settings.arguments as RemoteMessage;
    final notificationData = message.notification;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Push Notification"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Título: ${notificationData?.title}"),
          Text("Conteúdo: ${notificationData?.body}"),
        ],
      )),
    );
  }
}
