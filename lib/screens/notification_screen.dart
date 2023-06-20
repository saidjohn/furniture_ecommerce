import 'package:flutter/material.dart';
import 'package:furniture_app/views/notification_components/notification_app_bar.dart';
import 'package:furniture_app/views/notification_components/notification_body.dart';

class NotificationScreen extends StatefulWidget {
  static const id = "/notification";

  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: NotificationAppBar(),
      body: NotificationBody(),
    );
  }
}