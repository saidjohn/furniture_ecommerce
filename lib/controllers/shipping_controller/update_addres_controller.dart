import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/base_controller.dart';
import 'package:furniture_app/screens/shipping_screens/shipping_screen.dart';
import 'package:furniture_app/services/data/database/users.dart';
import 'package:furniture_app/views/utils/message_components.dart';
import 'package:furniture_app/services/constants/colors.dart';


class AddressUpdaterController extends BaseController {
  TextEditingController countryController;
  TextEditingController regionController;
  TextEditingController streetController;
  TextEditingController cityController;
  TextEditingController zipCodeController;
  void Function(void Function())? updater;

  AddressUpdaterController({ this.updater})
      : countryController = TextEditingController(),
        regionController = TextEditingController(),
        streetController = TextEditingController(),
        cityController = TextEditingController(),
        zipCodeController = TextEditingController();



  bool checkZipCod(String zipCode) {
    for (int i = 0; i < currentUser!.addresses.length; i++) {
      if (currentUser!.addresses[i].zipCode == zipCode) {
        return false;
      }
    }
    return true;
  }


  bool checkAddress(int i) {
    final String country = countryController.text.trim();
    final String region = regionController.text.trim();
    final String street = streetController.text.trim();
    final String city = cityController.text.trim();
    final String zipCode = zipCodeController.text.trim();

    if (!checkZipCod(zipCode)) {
      return false;
    }
    currentUser!.addresses[i].country = country;
    currentUser!.addresses[i].region = region;
    currentUser!.addresses[i].street = street;
    currentUser!.addresses[i].city = city;
    currentUser!.addresses[i].zipCode = zipCode;
    currentUser!.addresses[i].address = '$country, $region, $street, $city, $zipCode';

    return true;
  }



  void goToShipping(BuildContext context){
    Navigator.of(context).pop();
  }


  void awaitGoToShipping(BuildContext context) async{
    messageUpdated(context);
    Navigator.of(context).pop();
  }


  void messageUpdated(BuildContext context) {
    AppMessage.customSnackBar(
      content: 'Successfully update',
      backgroundColor: AppColors.c303030,
      context: context,
    );
  }

  void messageNotUpdated(BuildContext context) {
    AppMessage.customSnackBar(
      content: 'Address is not updated!',
      backgroundColor: AppColors.c303030,
      context: context,
    );
  }




}