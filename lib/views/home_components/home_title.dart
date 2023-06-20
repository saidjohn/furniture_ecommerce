import 'package:flutter/material.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/l10n/app_localizations.dart';
import 'package:furniture_app/services/theme/text_styles.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Column(
      children: [
        Text(
          l10n.makeHome,
          style: AppTextStyles.gelasioSemiBold18.copyWith(
            color: AppColors.c909090,
          ),
        ),
        Text(
          l10n.beautiful,
          style: AppTextStyles.gelasioBold30
              .copyWith(color: AppColors.c303030, fontSize: 18),
        ),
      ],
    );
  }
}