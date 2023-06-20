import 'package:flutter/material.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/l10n/app_localizations.dart';
import 'package:furniture_app/services/theme/text_styles.dart';
import 'package:furniture_app/views/custom_text_field.dart';
import 'package:furniture_app/views/login_button.dart';
import '../../controllers/shipping_controller/add_addres_controller.dart';

class AddAddress extends StatefulWidget {
  static const String id = "add_address_screen";

  const AddAddress({Key? key}) : super(key: key);

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  late AddAddresController controller;

  @override
  void initState() {
    controller = AddAddresController(updater: setState);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppLocalizations l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
          onPressed: () => controller.goToShippingScreen(context),
        ),
        title: Text(
          l10n.addAddress,
          style: AppTextStyles.merriWeatherBold18.copyWith(
            color: AppColors.c303030,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 10),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                CustomTextField(
                  labelText: "Country",
                  isObscure: false,
                  controller: controller.countryController,
                ),
                CustomTextField(
                  labelText: "Region",
                  isObscure: false,
                  controller: controller.regionController,
                ),
                CustomTextField(
                  labelText: "City",
                  isObscure: false,
                  controller: controller.cityController,
                ),
                CustomTextField(
                  labelText: "Street",
                  isObscure: false,
                  controller: controller.streetController,
                ),
                CustomTextField(
                  labelText: "Zip Code",
                  isObscure: false,
                  controller: controller.zipCodeController,
                ),
                const SizedBox(height: 50),
                Builder(
                  builder: (BuildContext context) => AppMainButton(
                    text: l10n.addAddress,
                    onPressWithContext: (BuildContext context) {
                    controller.checkNewAddress()
                        ? controller.awaitGoToShippingScreen(context)
                        : controller.messageNotAddedAddress(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }
}
