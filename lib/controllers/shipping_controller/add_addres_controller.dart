import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/base_controller.dart';
import 'package:furniture_app/models/address_model.dart';
import 'package:furniture_app/screens/shipping_screens/shipping_screen.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/data/database/address.dart';
import 'package:furniture_app/views/utils/message_components.dart';

class AddAddresController extends BaseController {
  TextEditingController countryController;
  TextEditingController regionController;
  TextEditingController streetController;
  TextEditingController cityController;
  TextEditingController zipCodeController;
  void Function(void Function())? updater;

  AddAddresController({this.updater})
      : countryController = TextEditingController(),
        regionController = TextEditingController(),
        streetController = TextEditingController(),
        cityController = TextEditingController(),
        zipCodeController = TextEditingController();

  void goToShippingScreen(BuildContext context) {
    Navigator.of(context).pop();
  }

  void awaitGoToShippingScreen(BuildContext context) async {
    messageAddedAddress(context);
    Navigator.of(context).pop();
  }

  bool checkZipCod(String zipCode) {
    for (int i = 0; i < userAddresses.length; i++) {
      if (userAddresses[i].zipCode == zipCode) {
        return false;
      }
    }
    return true;
  }

  bool checkNewAddress() {
    final String country = countryController.text.trim();
    final String region = regionController.text.trim();
    final String street = streetController.text.trim();
    final String city = cityController.text.trim();
    final String zipCode = zipCodeController.text.trim();

    if (!checkZipCod(zipCode)) {
      return false;
    }

    userAddresses.add(
      Address(
        id: '${userAddresses.length + 1}',
        usedid: '1',
        createdAt: DateTime.now().toString(),
        modifyAt: DateTime.now().toString(),
        title: 'title',
        address: '$country, $region, $street, $city',
        lat: 1,
        Ing: 1,
        zipCode: 'zipCode',
        street: street,
        city: city,
        region: region,
        country: country,
      ),
    );
    return true;
  }

  void messageNotAddedAddress(BuildContext context) {
    AppMessage.customSnackBar(
      content: 'Address has already exist',
      backgroundColor: AppColors.c303030,
      context: context,
    );
  }

  void messageAddedAddress(BuildContext context) {
    AppMessage.customSnackBar(
      content: 'Successfully added',
      backgroundColor: AppColors.c303030,
      context: context,
    );
  }
}
