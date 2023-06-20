import 'package:flutter/cupertino.dart';
import 'package:furniture_app/controllers/base_controller.dart';
import 'package:furniture_app/controllers/data_controller/cart_manager.dart';
import 'package:furniture_app/models/category_model.dart';
import 'package:furniture_app/models/product_model.dart';
import 'package:furniture_app/screens/cart_screen.dart';
import 'package:furniture_app/screens/product_screen.dart';
import 'package:furniture_app/services/data/database/categories.dart';
import 'package:furniture_app/services/data/database/products.dart';

class HomeController extends BaseController {
  int initialCategoryPage = 0;
  List<Category> categoryList = [];
  List<Product> productList = [];
  void Function(void Function())? updater;
  bool isLoading = false;

  HomeController({this.updater});

  @override
  void initial() {
    super.initial();
    getAllCategory();
  }


  void buttonTabBar(int index) {
    initialCategoryPage = index;
    getProduct(index);
    updater!(() {});
  }


  void getAllCategory() {
    /// TODO: get categories from network
    categoryList = categories;
    /// TODO: get categories from network
    getProduct();
    updater!(() {});
  }

  void getProduct([int index = 0]) {
    /// TODO: get product from network
    productList = products.where((element) => element.category.id == categoryList[index].id).toList();
    /// TODO: get product from network
  }

  void pressToCard(Product product) {
    cartManager.addToCartHome(product);
    updater!(() {});
  }
}
