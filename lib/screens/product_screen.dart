import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/product_controller.dart';
import 'package:furniture_app/models/product_model.dart';
import 'package:furniture_app/views/product_components/product_screen_bottom_button.dart';
import 'package:furniture_app/views/product_components/product_screen_data.dart';
import 'package:furniture_app/views/product_components/product_screen_image.dart';

class ProductScreen extends StatefulWidget {
  static const id = "/product";
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late final ProductController controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final product = ModalRoute.of(context)!.settings.arguments as Product;
    controller = ProductController(updater: setState, product: product);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          height: height > 500 ? height : 700,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// #image
              ProductScreenImage(
                controller: controller,
              ),

              /// data
              ProductScreenData(
                controller: controller,
              ),

              /// buttons
              ProductScreenBottomButton(
                controller: controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
