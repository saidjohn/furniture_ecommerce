import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/controllers/main_controller.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/icons.dart';

class AppNavigationBar extends StatelessWidget {
  final MainController controller;

  const AppNavigationBar({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedIcons = [
      CustomIcons.homeFill.path,
      CustomIcons.markerFill.path,
      CustomIcons.bellFill.path,
      CustomIcons.personFill.path,
    ];

    final unselectedIcons = [
      CustomIcons.home.path,
      CustomIcons.marker.path,
      CustomIcons.bell.path,
      CustomIcons.person.path,
    ];

    return NavigationBar(
      selectedIndex: 0,
      height: 70,
      backgroundColor: AppColors.cFFFFFF,
      destinations: [
        for (int i = 0; i < selectedIcons.length; i++)
          CupertinoButton(
            onPressed: () => controller.buttonNavigationBar(i),
            child: Container(
              width: 30,
              height: 35,
              child: Align(
                alignment: Alignment.topCenter,
                child: SvgPicture.asset(
                  controller.initialPage == i
                      ? selectedIcons[i]
                      : unselectedIcons[i],
                ),
              ),
            ),
          )
      ],
    );
  }
}
