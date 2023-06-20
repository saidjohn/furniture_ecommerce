import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/shipping_controller/update_addres_controller.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/services/l10n/app_localizations.dart';
import 'package:furniture_app/services/theme/text_styles.dart';
import 'package:furniture_app/views/custom_text_field.dart';
import 'package:furniture_app/views/login_button.dart';


class AddressUpdater extends StatefulWidget {
  static const String id = 'address_updater_id';

  const AddressUpdater({ Key? key}) : super(key: key);

  @override
  State<AddressUpdater> createState() => _AddressUpdaterState();
}

class _AddressUpdaterState extends State<AddressUpdater> {
 late AddressUpdaterController controller;

  @override
  void initState() {
    super.initState();
    // item = ModalRoute.of(context)!.settings.arguments as int;
    controller = AddressUpdaterController(updater: setState);
  }

  @override
  Widget build(BuildContext context) {
    int item = ModalRoute.of(context)!.settings.arguments as int;
    AppLocalizations l10n = AppLocalizations.of(context);

    return  Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
          onPressed: () => controller.goToShipping(context),
        ),
        title: Text(
          l10n.updateAddress,
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
                    text: l10n.updateAddress,
                    onPressWithContext: (BuildContext context) {
                      controller.checkAddress(item)
                          ?
                      controller.awaitGoToShipping(context)
                          :
                      controller.messageNotUpdated(context);
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