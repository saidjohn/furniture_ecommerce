import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/controllers/home_screen_controller.dart';
import 'package:furniture_app/models/category_model.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/services/data/database/categories.dart';
import 'package:furniture_app/services/theme/text_styles.dart';
import 'tab_bar_widgets.dart';

class TabBarComponents extends StatelessWidget {
  final HomeController controller;

  const TabBarComponents({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: MediaQuery.of(context).size.height > 550 ? 2 : 6,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: controller.categoryList.length,
          primary: false,
          itemBuilder: (context, index) {
            final category = controller.categoryList[index];

            return CustomTabBarWidget(
              onPressed: () => controller.buttonTabBar(index),
              text: category.name,
              style: AppTextStyles.nunitoSansSemiBold14,
              color: controller.initialCategoryPage == index
                  ? AppColors.c303030
                  : AppColors.cF0F0F0,
              widget: SvgPicture.asset(category.icon),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 25),
        ),
      ),
    );
  }
}
