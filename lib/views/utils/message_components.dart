import 'package:flutter/material.dart';
import 'package:furniture_app/services/constants/colors.dart';

class AppMessage {
  AppMessage._();

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> customSnackBar({required BuildContext context, required String content, Color backgroundColor = AppColors.c303030}) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(content),
        backgroundColor: backgroundColor,
      ),
    );
  }
}