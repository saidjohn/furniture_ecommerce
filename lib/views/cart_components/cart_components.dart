import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/controllers/cart_controller.dart';
import 'package:furniture_app/controllers/data_controller/cart_manager.dart';
import 'package:furniture_app/models/cart_item_model.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/services/l10n/app_localizations.dart';
import 'package:furniture_app/services/theme/text_styles.dart';

class CartItemWidget extends StatefulWidget {
  final String textLink;
  final int index;
  final CartController controller;

  const CartItemWidget({
    super.key,
    required this.textLink,
    required this.index,
    required this.controller,
  });

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  late final CartItem cartItem;

  @override
  void initState() {
    cartItem = cartManager.cart.carts[widget.index];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(cartItem.product.images[0]!.first),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
             ),
          ),
          const Spacer(
            flex: 1,
          ),
          SizedBox(
            width: 130,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cartItem.product.name,
                  style: AppTextStyles.nunitoSansBold14
                      .copyWith(color: AppColors.c606060),
                ),
                const Spacer(flex: 1),
                SizedBox(
                  width: 130,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => widget.controller.increment(widget.index),
                        child: ComponentButtonPlusMinus(icon: SvgIcon.add),
                      ),
                      Text(
                        "${cartManager.cart.carts[widget.index].quantity}"
                            .padLeft(2, "0"),
                        style: AppTextStyles.nunitoSansBold18,
                      ),
                      GestureDetector(
                        onTap: () => widget.controller.decrement(widget.index),
                        child: ComponentButtonPlusMinus(icon: SvgIcon.minus),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Spacer(flex: 4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () => widget.controller
                    .buttomCardItemDelate(widget.index, context),
                child: SvgIcon.cancel,
              ),
              const Spacer(flex: 1),
              Text(
                "\$ ${cartManager.cart.carts[widget.index].total}",
                style: AppTextStyles.nunitoSansBold16
                    .copyWith(color: AppColors.c303030),
              )
            ],
          )
        ],
      ),
    );
  }
}

class TotalSumm extends StatelessWidget {
  final CartController controller;

  const TotalSumm({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    // AppLocalizations l10n = AppLocalizations.of(context);
    return SizedBox(
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Text(
              Strings.total.text,
              style: AppTextStyles.nunitoSansBold20
                  .copyWith(color: AppColors.c808080),
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              "\$ ${cartManager.cart.carts.fold(0.0, (totalSum, element) => totalSum += element.total)}",
              style: AppTextStyles.nunitoSansBold20,
            ),
          ],
        ),
      ),
    );
  }
}

class ComponentButtonPlusMinus extends StatelessWidget {
  final SvgPicture icon;

  const ComponentButtonPlusMinus({required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 30,
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: AppColors.cE0E0E0),
        child: Transform.scale(scale: 0.6, child: icon),
      ),
    );
  }
}
