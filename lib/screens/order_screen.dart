import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/order_controller.dart';
import 'package:furniture_app/screens/order_internal/delivered_screen.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/l10n/app_localizations.dart';
import 'package:furniture_app/services/theme/text_styles.dart';
import 'order_internal/canceled_screen.dart';
import 'order_internal/processing_screen.dart';

class OrderScreen extends StatefulWidget {
  static const id = "/order";

  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  late OrderController navController;
  late final AppLocalizations l10n;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    l10n = AppLocalizations.of(context);
  }

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  int currentIndex = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()=>navController.goToProfile(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.c303030,
          ),
        ),
        elevation: 0,
        title: Text(
          l10n.myOrders,
          style: AppTextStyles.merriWeatherBold18.copyWith(
            color: AppColors.c303030,
          ),
        ),
        bottom: TabBar(
          indicatorColor: AppColors.c303030,
          indicator: UnderlineTabIndicator(
            borderSide: const BorderSide(width: 3, color: AppColors.c303030),
            insets: const EdgeInsets.symmetric(horizontal: 43),
            borderRadius: BorderRadius.circular(4),
          ),
          controller: controller,
          labelColor: AppColors.c303030,
          tabs: [
            Tab(
                icon: Text(l10n.delivered,
                    style: AppTextStyles.nunitoSansRegular18)),
            Tab(
                icon: Text(l10n.processing,
                    style: AppTextStyles.nunitoSansRegular18)),
            Tab(
                icon: Text(l10n.canceled,
                    style: AppTextStyles.nunitoSansRegular18)),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          ///#Delivered Order Page
          DeliveredScreen(),
          ///#Processing Order Page
          ProcessingScreen(),
          ///#Canceled Order Page
          CanceledScreen(),
        ],
      ),
    );
  }
}
