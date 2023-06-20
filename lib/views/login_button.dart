import 'package:flutter/material.dart';
import '../services/constants/colors.dart';
import '../services/theme/text_styles.dart';

class AppMainButton extends StatelessWidget {
  final void Function(BuildContext)? onPressWithContext;
  final String text;
  final double marginWidth;
  const AppMainButton({
    super.key,
    required this.onPressWithContext,
    this.marginWidth = 30,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: marginWidth),
      child: MaterialButton(
        onPressed: onPressWithContext != null ? () {
          onPressWithContext!(context);
        } : null,
        elevation: 10,
        color: AppColors.c212121,
        height: 55,
        minWidth: MediaQuery.of(context).size.width,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)),
        child: Text(
          text,
          textScaleFactor: 1.075,
          style: AppTextStyles.nunitoSansSemiBold18.copyWith(
            color: AppColors.cFFFFFF,
          ),
        ),
      ),
    );
  }
}
