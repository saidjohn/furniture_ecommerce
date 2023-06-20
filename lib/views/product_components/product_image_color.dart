import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/product_controller.dart';
import 'package:furniture_app/services/constants/colors.dart';

class ProductImageColors extends StatefulWidget {
  final void Function(int value) onChanged;
  final ProductController controller;
  const ProductImageColors({
    super.key,
    required this.onChanged,
    required this.controller,
  });

  @override
  State<ProductImageColors> createState() => _ProductImageColorsState();
}

class _ProductImageColorsState extends State<ProductImageColors> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 812;
    double width = MediaQuery.of(context).size.width / 375;
    return Container(
      width: 64 * width,
      height: 192 * height,
      padding: const EdgeInsets.symmetric(vertical: 5),
      margin: EdgeInsets.only(top: 33 * height),
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            offset: const Offset(0, 4),
            color: const Color(0xFF8A959E).withOpacity(0.3),
          ),
        ],
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (int i = 0; i < widget.controller.product.colors.length; i++)
              GestureDetector(
                onTap: () {
                  widget.onChanged(i);
                  widget.controller.color = i;
                },
                child: Container(
                  width: 34 * width,
                  height: 34 * height,
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(widget.controller.product.colors[i]),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
