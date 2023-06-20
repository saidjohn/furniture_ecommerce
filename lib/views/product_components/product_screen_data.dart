import 'package:flutter/cupertino.dart';
import 'package:furniture_app/controllers/product_controller.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/services/theme/text_styles.dart';
import 'package:furniture_app/views/product_components/icon_button.dart';

class ProductScreenData extends StatelessWidget {
  final ProductController controller;
  const ProductScreenData({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 812;
    double width = MediaQuery.of(context).size.width / 375;
    return Expanded(
      flex: MediaQuery.of(context).size.height > 900 ? 5 : 6,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 25 * width,
          vertical: 25 * height,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              controller.product.name,
              style: AppTextStyles.gelasioMedium24,
            ),
            SizedBox(height: 10 * height),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$ ${controller.sum}",
                  style: AppTextStyles.nunitoSansBold30,
                ),
                SizedBox(
                  width: 113 * width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppIconButton(
                        icon: const Icon(
                          CupertinoIcons.add,
                          color: AppColors.c909090,
                          size: 25,
                        ),
                        onPress: controller.increment,
                      ),
                      Text(
                        "${controller.count}".padLeft(2, "0"),
                        style: AppTextStyles.nunitoSansBold18,
                      ),
                      AppIconButton(
                        icon: const Icon(
                          CupertinoIcons.minus,
                          color: AppColors.c909090,
                          size: 25,
                        ),
                        onPress: controller.decrement,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10 * height),
            Row(
              children: [
                SizedBox(
                  width: 20 * width,
                  height: 20 * height,
                  child: SvgIcon.star,
                ),
                SizedBox(width: 10 * width),
                GestureDetector(
                  onTap: () => controller.btnReview(context),
                  child: const Text(
                    "4.5",
                    style: AppTextStyles.nunitoSansBold18,
                  ),
                ),
                SizedBox(width: 20 * width),
                GestureDetector(
                  onTap: () => controller.goToReview(context),
                  child: Text(
                    "(${controller.product.review.length} reviews)",
                    style: AppTextStyles.nunitoSansBold14.copyWith(
                      color: AppColors.c808080,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 14 * height),
            Text(
              controller.product.desc,
              maxLines: 3,
              style: AppTextStyles.nunitoSansLight14.copyWith(
                wordSpacing: 3,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// bruno@gmail.com