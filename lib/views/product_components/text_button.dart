import 'package:flutter/material.dart';

import '../../services/constants/colors.dart';
import '../../services/theme/text_styles.dart';

class AppTextButton extends StatelessWidget {
  final void Function() onPress;
  final String label;
  const AppTextButton({
    super.key,

    required this.onPress,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
      double height = MediaQuery.of(context).size.height / 812;
    double width = MediaQuery.of(context).size.width / 375;
    return Material(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.c303030,
          minimumSize: Size(250 * width, 60 * height),
          elevation: 30,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          shadowColor: AppColors.c303030.withOpacity(0.4),
        ),
        onPressed: onPress,
        child: Text(
          label,
          style: AppTextStyles.nunitoSansSemiBold20,
        ),
      ),
    );
  }
}
