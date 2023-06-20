import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/home_screen_controller.dart';
import 'package:furniture_app/services/app_routes.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/views/home_components/products_widgets.dart';

class CustomProduct extends StatelessWidget {
  final HomeController controller;

  const CustomProduct({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 0.2/.36,
          ),
          itemCount: controller.productList.length,
          itemBuilder: (context, index) {
            final product = controller.productList[index];
            return CustomProductWidget(
              onPressedProduct: () => AppRoutes.pushProduct(context, product),
              imageProvider: AssetImage(product.images[0]!.first),
              onPressedCart: () => controller.pressToCard(product),
              widget: SvgIcon.bag,
              title: product.name,
              subTitle: product.price.toString(),
            );
          },
        ),
      ),
    );
  }
}
