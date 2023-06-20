import 'package:flutter/material.dart';
import 'package:furniture_app/models/product_model.dart';
import 'package:furniture_app/screens/boarding_screen.dart';
import 'package:furniture_app/screens/cart_screen.dart';
import 'package:furniture_app/screens/check_out_screen.dart';
import 'package:furniture_app/screens/congrats_screen.dart';
import 'package:furniture_app/screens/favorite_screen.dart';
import 'package:furniture_app/screens/main_screen.dart';
import 'package:furniture_app/screens/notification_screen.dart';
import 'package:furniture_app/screens/order_screen.dart';
import 'package:furniture_app/screens/product_screen.dart';
import 'package:furniture_app/screens/profile_screen.dart';
import 'package:furniture_app/screens/review_screen.dart';
import 'package:furniture_app/screens/shipping_screens/shipping_screen.dart';
import 'package:furniture_app/screens/shipping_screens/update_address_screen.dart';
import 'package:furniture_app/screens/sign_up_screen.dart';
import 'package:furniture_app/screens/sing_in_screen.dart';

bool isAuth = false;

class AppRoutes {
  AppRoutes._();

  static String? get initialRoute {
    if(!isAuth) {
      return BoardingScreen.id;
    } else {
      return MainScreen.id;
    }
  }

  static final routes = {
    BoardingScreen.id : (context) => const BoardingScreen(),
    CartScreen.id : (context) => const CartScreen(),
    CheckOutScreen.id : (context) => const CheckOutScreen(),
    CongratsScreen.id : (context) => const CongratsScreen(),
    FavoriteScreen.id : (context) => const FavoriteScreen(),
    MainScreen.id : (context) => const MainScreen(),
    NotificationScreen.id : (context) => const NotificationScreen(),
    OrderScreen.id : (context) => const OrderScreen(),
    ProductScreen.id : (context) => const ProductScreen(),
    ProfileScreen.id : (context) => const ProfileScreen(),
    ReviewScreen.id : (context) => const ReviewScreen(),
    ShippingScreen.id : (context) => const ShippingScreen(),
    SignUpScreen.id : (context) => const SignUpScreen(),
    SignInScreen.id : (context) => const SignInScreen(),
    AddressUpdater.id: (context) => const AddressUpdater(),
  };

  static void pushReplaceSignIn(BuildContext context) {
    Navigator.pushReplacementNamed(context, SignInScreen.id);
  }

  static void pushReplaceSignUp(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(SignUpScreen.id);
  }

  static void pushReplaceHome(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(MainScreen.id);
  }

  static void pushCart(BuildContext context) {
    Navigator.of(context).pushNamed(CartScreen.id);
  }

  static void pushProduct(BuildContext context, Product product) {
    Navigator.of(context).pushNamed(ProductScreen.id, arguments: product);
  }

  static void pushAddressUpdate(BuildContext context, int item) {
    Navigator.of(context).pushNamed(AddressUpdater.id, arguments: item);
  }
}