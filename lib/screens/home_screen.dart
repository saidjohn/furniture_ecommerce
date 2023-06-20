import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/home_screen_controller.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/views/app_bar_component.dart';
import 'package:furniture_app/views/home_components/home_title.dart';
import 'package:furniture_app/views/home_components/products_components.dart';
import 'package:furniture_app/views/home_components/tab_bar_components.dart';

class HomeScreen extends StatefulWidget {
  static const id = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeController controller;

  @override
  void initState() {
    super.initState();
    controller = HomeController(updater: setState)..initial();
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Home");
    return Scaffold(
      appBar: AppBarComponent(
        title: const HomeTitle(),
        leading: SvgIcon.search,
        action: true,
        leadingPressed: () {},
      ),
      body: Column(
        children: [
          TabBarComponents(controller: controller),
          CustomProduct(controller: controller),
        ],
      ),
    );
  }
}
