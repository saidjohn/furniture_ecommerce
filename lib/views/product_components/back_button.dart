import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/product_controller.dart';
import 'package:furniture_app/services/constants/colors.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    super.key,
    required this.controller,
  });

  final ProductController controller;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 812;
    double width = MediaQuery.of(context).size.width / 375;
    return GestureDetector(
      onTap: () => controller.btnBack(context),
      child: Container(
        width: 50 * width,
        height: 50 * height,
        margin: EdgeInsets.only(left: 7 * width, top: 59 * height),
        decoration: BoxDecoration(
          color: AppColors.cFFFFFF,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              offset: const Offset(0, 4),
              color: const Color(0xFF8A959E).withOpacity(0.2),
            ),
          ],
        ),
        child: const Icon(
          Icons.chevron_left_outlined,
          size: 40,
          color: AppColors.c303030,
        ),
      ),
    );
  }
}
