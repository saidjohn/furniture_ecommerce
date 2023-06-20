import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/favorite_controller.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/services/l10n/app_localizations.dart';
import 'package:furniture_app/services/theme/text_styles.dart';
import '../services/data/database/products.dart';
import '../views/favorite_components/cart_button.dart';
import '../views/favorite_components/favorite_product_widget.dart';

class FavoriteScreen extends StatefulWidget {
  static const id = "/favorite";

  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  late final FavoriteController controller;

  @override
  void initState() {
    super.initState();
    controller = FavoriteController(updater: setState);
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            SvgIcon.search,
          ],
        ),
        title: Text(
          l10n.favorite,
          style: AppTextStyles.merriWeatherBold18.copyWith(
            color: AppColors.c303030,
          ),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
              onTap: () => controller.goToCongrats(context),
              child: SvgIcon.cart),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// scroll
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: ListView.separated(
                    itemCount: products.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(
                      thickness: 2,
                      height: 24,
                      color: AppColors.cF0F0F0,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return ProductWidget(
                        index: index,
                        controller: controller,
                        product: products[index],
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: SizedBox(
                    width: 800,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () => controller.goToCongrats(context),
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        shadowColor: AppColors.c303030,
                        backgroundColor: AppColors.c303030,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        minimumSize: const Size(800, 60),
                      ),
                      child: Text(
                        l10n.addAll,
                        style: AppTextStyles.nunitoSansSemiBold18.copyWith(
                          color: AppColors.cFFFFFF,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
