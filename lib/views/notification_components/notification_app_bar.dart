import 'package:flutter/material.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/services/l10n/app_localizations.dart';

class NotificationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const NotificationAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return AppBar(
      toolbarHeight: 150,
      leadingWidth: 50,
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: SvgIcon.search,
      ),
      title: Text(
        l10n.notification,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
