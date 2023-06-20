import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/shipping_controller/shipping_controller.dart';
import 'package:furniture_app/services/app_routes.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/services/data/database/users.dart';
import 'package:furniture_app/services/theme/text_styles.dart';

class FullAddressWidget extends StatefulWidget {
  final int item;

  const FullAddressWidget({required this.item, Key? key}) : super(key: key);

  @override
  State<FullAddressWidget> createState() => _FullAddressWidgetState();
}

class _FullAddressWidgetState extends State<FullAddressWidget> {
  late ShippingController controller;

  @override
  void initState() {
    super.initState();
    controller = ShippingController(updater: setState);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.cFFFFFF,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.grey.shade200,
            offset: const Offset(2, 6),
            spreadRadius: 0.5,
          ),
        ],
      ),
      child: Column(
        children: [
          /// #person_name
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// #user name
                  Text(
                    currentUser!.name,
                    style: AppTextStyles.nunitoSansBold18.copyWith(
                      color: AppColors.c303030,
                    ),
                  ),

                  /// #edit Button
                  FilledButton(
                    onPressed: () {
                      AppRoutes.pushAddressUpdate(context, widget.item);
                      controller.goAddAddressScreen(context, widget.item);
                    },
                    style: const ButtonStyle(
                      fixedSize: MaterialStatePropertyAll<Size>(Size(30, 10)),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.transparent),
                      overlayColor: MaterialStatePropertyAll(
                        AppColors.cF0F0F0,
                      ),
                    ),
                    child: SizedBox(
                      width: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: SvgIcon.edit,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const Divider(
            thickness: 2,
            color: AppColors.cF0F0F0,
          ),

          /// #full_address
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Text(
                currentUser!.addresses[widget.item].address,
                style: AppTextStyles.nunitoSansRegular14
                    .copyWith(color: AppColors.c808080, height: 2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
