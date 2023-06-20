import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/shipping_controller/shipping_controller.dart';
import 'package:furniture_app/services/data/database/users.dart';
import 'package:furniture_app/services/l10n/app_localizations.dart';
import 'package:furniture_app/views/app_bar_component.dart';
import 'package:furniture_app/views/shipping_components/action_button_components.dart';
import 'package:furniture_app/views/shipping_components/check_box_components.dart';
import 'package:furniture_app/views/shipping_components/ful_address_components.dart';
import 'package:furniture_app/views/shipping_components/size_height_components.dart';

class ShippingScreen extends StatefulWidget {
  static const id = "/shipping";

  const ShippingScreen({Key? key}) : super(key: key);

  @override
  State<ShippingScreen> createState() => _ShippingScreenState();
}

class _ShippingScreenState extends State<ShippingScreen> {
  late ShippingController shippingController;
  List<bool> isCheckedList = [];

  @override
  void initState() {
    shippingController = ShippingController(updater: setState, user: user1);
    isCheckedList =
        List.generate(currentUser!.addresses.length, (index) => false);
    checker(0);
    super.initState();
  }

  void checker(int i) {
    isCheckedList =
        List.generate(currentUser!.addresses.length, (index) => false);
    isCheckedList[i] = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    AppLocalizations l10n = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBarComponent(
        title: Text(l10n.shippingAddress),
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        action: false,
        leadingPressed: () {
          shippingController.goToProfile(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView.builder(
          itemCount: currentUser!.addresses.length,
          shrinkWrap: true,
          itemBuilder: (context, i) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                /// #sizeHeight
                const SizeHeight(),

                /// #chack box and shipping address
                WidgetCheckBox(
                  function: checker,
                  item: i,
                  isChecker: isCheckedList[i],
                ),

                /// #sizeHeight
                const SizeHeight(),

                /// #full person address
                FullAddressWidget(
                  item: i,
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: const WidgetFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  @override
  void dispose() {
    shippingController.close();
    super.dispose();
  }
}
