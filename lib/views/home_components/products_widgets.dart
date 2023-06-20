import 'package:flutter/cupertino.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/theme/text_styles.dart';

class CustomProductWidget extends StatelessWidget {
  final ImageProvider imageProvider;
  final void Function()? onPressedProduct;
  final void Function()? onPressedCart;
  final Widget widget;
  final String title;
  final String subTitle;

  const CustomProductWidget({
    Key? key,
    required this.onPressedProduct,
    required this.imageProvider,
    required this.onPressedCart,
    required this.widget,
    required this.title,
    required this.subTitle,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: Stack(
            children: [
              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: onPressedProduct,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(.85,.95),
                child: CupertinoButton(
                  onPressed: onPressedCart,
                  padding: EdgeInsets.zero,
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.c909090,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: widget,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Text(
                title,
                style: AppTextStyles.nunitoSansRegular16,
              ),
              Text(
                subTitle,
                style: AppTextStyles.nunitoSansBold16,
              ),
            ],
          ),
        )
      ],
    );
  }
}