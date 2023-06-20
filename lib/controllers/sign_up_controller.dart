import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/base_controller.dart';
import 'package:furniture_app/models/address_model.dart';
import 'package:furniture_app/models/user_model.dart';
import 'package:furniture_app/services/app_routes.dart';
import 'package:furniture_app/services/config/checker.dart';
import 'package:furniture_app/services/data/database/users.dart';
import 'package:furniture_app/views/utils/message_components.dart';

class SignUpController extends BaseController {
  TextEditingController nameController;
  TextEditingController emailController;
  TextEditingController passwordController;
  TextEditingController rePasswordController;

  void Function(void Function())? updater;
  bool isLoading = false;

  SignUpController({this.updater})
      : nameController = TextEditingController(),
        emailController = TextEditingController(),
        passwordController = TextEditingController(),
        rePasswordController = TextEditingController();

  @override
  void close() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    rePasswordController.dispose();
    super.close();
  }

  void signUp(BuildContext context) async {
    isLoading = true;
    updater!(() {});

    String name = nameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String rePassword = rePasswordController.text.trim();

    debugPrint(name);
    debugPrint(email);
    debugPrint(password);
    debugPrint(rePassword);

    isLoading = false;
    updater!(() {});

    bool existUser = _isExist(email);
    bool validate = _validate(name, email, password, rePassword);

    if (validate && !existUser) {
      int userId = int.parse(usersList.last.userId) + 1;

      final newUser = User(
        userId: userId.toString(),
        name: name,
        email: email,
        password: password,
        createdAt: DateTime.now().toString(),
        modifyAt: DateTime.now().toString(),
        devices: [],
        cards: [],
        favourites: [],
        addresses: [Address(id: "1", usedid: "1", createdAt: DateTime.now().toString(), modifyAt: DateTime.now().toString(), title: "Address", address: "Address", lat: 0.1, Ing: 0.1, zipCode: "zipCode", street: "", city: "", region: "", country: "")],
      );

      usersList.add(newUser);
      AppRoutes.pushReplaceSignIn(context);
    } else {
      _wrongCase(context, name, email, password, rePassword);
    }
  }

  void _wrongCase(BuildContext context, String name, String email,
      String password, String rePassword) {
    if (!Checker.checkName(name) || name.isEmpty) {
      AppMessage.customSnackBar(context: context, content: "Invalid name");
    } else if (!Checker.checkEmail(email) || email.isEmpty) {
      AppMessage.customSnackBar(context: context, content: "Invalid email");
    } else if (!Checker.checkPassword(password) || password.isEmpty) {
      AppMessage.customSnackBar(context: context, content: "Invalid password");
    } else if (!(password == rePassword) || rePassword.isEmpty) {
      AppMessage.customSnackBar(
          context: context, content: "Password must match");
    }
  }

  bool _isExist(String email) {
    for (int i = 0; i < usersList.length; i++) {
      if (usersList[i].email == email) {
        return true;
      }
    }
    return false;
  }

  bool _validate(
          String name, String email, String password, String rePassword) =>
      Checker.checkName(name) &&
      Checker.checkEmail(email) &&
      Checker.checkPassword(password) &&
      password == rePassword;
}
