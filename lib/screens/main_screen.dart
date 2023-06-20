import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/main_controller.dart';
import 'package:furniture_app/screens/favorite_screen.dart';
import 'package:furniture_app/screens/notification_screen.dart';
import 'package:furniture_app/screens/profile_screen.dart';
import 'package:furniture_app/views/home_components/bottom_navigation_bar.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  static const id = "/main";

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final MainController controller;
  @override
  void initState() {
    controller = MainController(updater: setState, pageController: PageController());
    super.initState();
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Main");
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        onPageChanged: (index) => controller.buttonPageView(index),
        children: const [
          HomeScreen(),
          FavoriteScreen(),
          NotificationScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: AppNavigationBar(controller: controller),
    );
  }
}
