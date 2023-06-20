import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/product_controller.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/views/product_components/back_button.dart';
import 'package:furniture_app/views/product_components/product_image_color.dart';

class ProductImages extends StatefulWidget {
  final ProductController controller;

  const ProductImages({
    super.key,
    required this.controller,
  });

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  PageController pageController =
      PageController(initialPage: 0, keepPage: true);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 812;
    double width = MediaQuery.of(context).size.width / 375;
    return Stack(
      children: [
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 52 * width),
              child: SizedBox(
                width: 323 * width,
                height: 455 * height,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                  ),
                  child: PageView(
                    controller: pageController,
                    onPageChanged: (value) {
                      setState(() => widget.controller.page = value);
                    },
                    children: widget
                        .controller.product.images[widget.controller.color]!
                        .map(
                          (img) => Image(
                            image: AssetImage(img),
                            fit: BoxFit.contain,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.7, 0.85),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int i = 0;
                      i <
                          widget.controller.product
                              .images[widget.controller.color]!.length;
                      i++)
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      height: 4 * height,
                      margin: const EdgeInsets.only(right: 10),
                      width:
                          widget.controller.page == i ? 30 * width : 15 * width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: widget.controller.page == i
                            ? AppColors.c303030
                            : AppColors.cF0F0F0,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 20 * width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBackButton(controller: widget.controller),
              ProductImageColors(
                controller: widget.controller,
                onChanged: (newColorPage) => setState(
                  () {
                    widget.controller.page = 0;
                    pageController.jumpToPage(widget.controller.page);
                    widget.controller.color = newColorPage;
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
