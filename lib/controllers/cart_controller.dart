import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/data_controller/cart_manager.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/theme/text_styles.dart';

import 'base_controller.dart';

class CartController extends BaseController {
  TextEditingController controller;
  void Function(void Function())? updater;
  bool isLoading = false;

  CartController({this.updater})
      : controller = TextEditingController();

  @override
  void close() {
    controller.dispose();
    super.close();
  }

  void decrement(
    int index,
  ) {
    if (cartManager.cart.carts[index].quantity > 1) {
      cartManager.cart.carts[index].quantity--;
      cartManager.cart.carts[index].total -= cartManager.cart.carts[index].product.price;
      updater!(() {});
    }
  }

  void increment(int index) {
    cartManager.cart.carts[index].quantity++;
    cartManager.cart.carts[index].total += cartManager.cart.carts[index].product.price;

    updater!(() {});
  }

  void getBack(BuildContext context) {
    Navigator.pop(context);
  }

  void buttomCardItemDelate(int index, BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("You want to remove from Cart?",
              style: AppTextStyles.nunitoSansBold20),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                cartManager.cart.carts.removeAt(index);
                Navigator.pop(context);
                updater!(() {});
              },
              child: const Text("Yes",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.cEB5757)),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "No",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          ],
        );
      },
    );
  }
}
