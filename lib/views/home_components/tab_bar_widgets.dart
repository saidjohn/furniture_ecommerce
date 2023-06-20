import 'package:flutter/material.dart';

class CustomTabBarWidget extends StatelessWidget {
  final void Function()? onPressed;
  final Color color;
  final String text;
  final TextStyle style;
  final Widget widget;

  const CustomTabBarWidget({
    Key? key,
    required this.onPressed,
    required this.color,
    required this.text,
    required this.style,
    required this.widget,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            minimumSize: const Size(50, 50),
          ),
          child: widget,
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: style,
        ),
      ],
    );
  }
}
