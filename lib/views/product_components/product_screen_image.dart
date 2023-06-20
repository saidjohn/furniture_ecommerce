import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/product_controller.dart';

import 'product_image.dart';

class ProductScreenImage extends StatelessWidget {
  final ProductController controller;
  const ProductScreenImage({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: ProductImages(
        controller: controller,
      ),
    );
  }
}
