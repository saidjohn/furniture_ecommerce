import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/data_controller/cart_manager.dart';
import 'package:furniture_app/services/app_routes.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/services/theme/text_styles.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final Widget leading;
  final bool action;
  final void Function() leadingPressed;

  const AppBarComponent({
    Key? key,
    required this.title,
    required this.leading,
    required this.action,
    required this.leadingPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: leadingPressed,
        child: Padding(
          padding: const EdgeInsets.all(12.5),
          child: leading,
        ),
      ),
      elevation: 0,
      title: title,
      centerTitle: true,
      actions: action
          ? [
              GestureDetector(
                onTap: () => AppRoutes.pushCart(context),
                child: Padding(
                  padding: const EdgeInsets.all(12.5),
                  child: Badge(
                    label: Text("${cartManager.cart.carts.length > 9 ? "9+" : cartManager.cart.carts.length}", style: AppTextStyles.nunitoSansBold12.copyWith(color: AppColors.cFFFFFF)),
                    child: SvgIcon.cart,
                  ),
                ),
              ),
            ]
          : [],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
