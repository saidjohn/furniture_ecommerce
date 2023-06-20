import 'package:flutter/material.dart';

import '../../services/constants/colors.dart';

class AppIconButton extends StatefulWidget {
  final Widget icon;
  final void Function() onPress;
  final double? width;
  final double? height;
  final double? iconSize;
  final Color? backgroundColor;

  const AppIconButton({
    super.key,
    this.height,
    this.width,
    this.iconSize,
    this.backgroundColor,
    required this.icon,
    required this.onPress,
  });

  @override
  State<AppIconButton> createState() => _AppIconButtonState();
}

class _AppIconButtonState extends State<AppIconButton> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 812;
    double width = MediaQuery.of(context).size.width / 375;
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor:
            widget.backgroundColor ?? AppColors.cE0E0E0.withOpacity(0.3),
        minimumSize:
            Size(widget.width ?? 30 * width, widget.width ?? 30 * height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onPressed: widget.onPress,
      child: widget.icon,
    );
  }
}
