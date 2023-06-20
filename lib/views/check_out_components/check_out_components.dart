import 'package:flutter/material.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/services/theme/text_styles.dart';

Text appBarText() {
  return Text(
    Strings.appBarCheckOut.text,
    style: const TextStyle(
      color: AppColors.c303030,
    ),
  );
}

Text brunoFernandes() {
  return Text(
    Strings.brunoFernandes.text,
    style: AppTextStyles.nunitoSansBold18.copyWith(fontSize: 18),
  );
}

Text submitOrder() {
  return Text(
    Strings.submitOrder.text,
    style: AppTextStyles.nunitoSansRegular16,
  );
}

Text price3() {
  return const Text(
    "\$ 100.00",
    style: AppTextStyles.nunitoSansBold18,
  );
}

Text price2() {
  return const Text(
    "\$ 5.00",
    style: AppTextStyles.nunitoSansBold18,
  );
}

Text totalText() {
  return Text(
    Strings.total.text,
    style: AppTextStyles.nunitoSansRegular10.copyWith(fontSize: 18),
  );
}

Text deliveryText() {
  return Text(
    Strings.delivery.text,
    style: AppTextStyles.nunitoSansRegular10.copyWith(fontSize: 18),
  );
}

Text price1() {
  return const Text(
    "\$ 95.00",
    style: AppTextStyles.nunitoSansBold18,
  );
}

Text orderText() {
  return Text(
    Strings.order.text,
    style: AppTextStyles.nunitoSansRegular10.copyWith(fontSize: 18),
  );
}

Text cardNumber() {
  return const Text(
    "**** **** **** 3947",
    style: AppTextStyles.nunitoSansSemiBold18,
  );
}

Text paymentText() {
  return Text(
    Strings.payment.text,
    style:
        AppTextStyles.nunitoSansBold18.copyWith(color: AppColors.c909090),
  );
}

Text descriptionTxt() {
  return Text(
    "25 rue Robert Latouche, Nice, 06200, Côte D’azur, France",
    style: AppTextStyles.nunitoSansRegular18
        .copyWith(color: AppColors.c909090, fontSize: 14),
  );
}

MaterialButton editButton() {
  return MaterialButton(
    onPressed: () {},
    child: SvgIcon.edit,
  );
}

Text shipping() {
  return Text(
    "Shipping Address",
    style: TextStyle(
      fontFamily: "${AppTextStyles.nunitoSansSemiBold18.fontFamily}",
      color: AppColors.c909090,
    ),
  );
}
