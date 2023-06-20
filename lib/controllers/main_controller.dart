import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/base_controller.dart';

class MainController extends BaseController {
  int initialPage = 0;
  PageController pageController;
  void Function(void Function())? updater;

  MainController({this.updater, required this.pageController});


  void buttonNavigationBar(int index) {
    initialPage = index;
    pageController.jumpToPage(initialPage);
    updater!(() {});
  }

  void buttonPageView(int index) {
    initialPage = index;
    updater!(() {});
  }

  @override
  void close() {
    pageController.dispose();
    super.close();
  }
}