import 'package:flutter/material.dart';

SnackBar customSnackBar({required String content, required Color backgroundColor}) {
  return SnackBar(
    content: Text(content),
    backgroundColor: backgroundColor,
  );
}
