import 'package:flutter/cupertino.dart';

import '../../controllers/favorite_controller.dart';
import '../../models/product_model.dart';
import '../../services/constants/colors.dart';
import '../../services/constants/svg_icons.dart';
import '../../services/theme/text_styles.dart';

class ProductWidget extends StatefulWidget {
  final FavoriteController controller;
  final Product product;
  final int index;

  const ProductWidget(
      {super.key,
        required this.controller,
        required this.product,
        required this.index});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  late final FavoriteController controller;

  @override
  void initState() {
    super.initState();
    controller = FavoriteController(updater: setState);
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          GestureDetector(
            onTap: () => controller.buttonProduct(context, widget.product),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(widget.product.images[0]!.first),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.product.name,
                style: AppTextStyles.nunitoSansSemiBold14.copyWith(
                  color: AppColors.c606060,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                widget.product.price.toString(),
                style: AppTextStyles.nunitoSansBold18.copyWith(
                  color: AppColors.c303030,
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 7,
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () => controller.productDelete(widget.index),
                child: SizedBox(width: 25, height: 25, child: SvgIcon.cancel),
              ),
              const Spacer(
                flex: 1,
              ),
              Container(
                padding: const EdgeInsets.all(6),
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  color: AppColors.cE0E0E0,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: GestureDetector(
                  onTap: () => controller.goToCongrats(context),
                  child: SvgIcon.cart2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
