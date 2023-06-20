import 'package:flutter/material.dart';

enum AppImage {
  card(AssetImage("assets/images/img_card.png")),
  check(AssetImage("assets/images/img_check.png")),
  logo(AssetImage("assets/images/img_logo.png")),
  onBoarding(AssetImage("assets/images/img_onboarding.png")),

  // Persons
  person(AssetImage("assets/images/img_person.png")),
  person2(AssetImage("assets/images/img_person_1.png")),
  person3(AssetImage("assets/images/img_person_2.png")),

  // Products
  product(AssetImage("assets/images/img_product.png")),
  product1(AssetImage("assets/images/img_product_1.png")),
  product2(AssetImage("assets/images/img_product_2.png")),
  product3(AssetImage("assets/images/img_product_3.png")),
  product4(AssetImage("assets/images/img_product_4.png")),
  product5(AssetImage("assets/images/img_product_5.png")),
  product6(AssetImage("assets/images/img_product_6.png")),
  product7(AssetImage("assets/images/img_product_7.png")),
  product8(AssetImage("assets/images/img_product_8.png")),
  product9(AssetImage("assets/images/img_product_9.png")),
  product10(AssetImage("assets/images/img_product_10.png")),
  product11(AssetImage("assets/images/img_product_11.png")),
  product12(AssetImage("assets/images/img_product_12.png")),
  product13(AssetImage("assets/images/img_product_13.png"));

  const AppImage(this.img);
  final AssetImage img;
}
