import 'package:flutter/material.dart';
import '../../services/constants/colors.dart';
import '../../services/constants/strings.dart';
import '../../services/theme/text_styles.dart';

class WidgetCheckBox extends StatefulWidget {
  int item;
  bool isChecker;
  Function function;

  WidgetCheckBox({
    required this.function,
    required this.item,
    required this.isChecker,
    Key? key,
  }) : super(key: key);

  @override
  State<WidgetCheckBox> createState() => _WidgetCheckBoxState();
}

class _WidgetCheckBoxState extends State<WidgetCheckBox> {
  late int item;

  @override
  void initState() {
    item = widget.item;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isActive = widget.isChecker;

    return GestureDetector(
      onTap: () {
        widget.function(item);
        setState(() {});
      },

      /// #check Box & Shipping Address
      child: Row(
        children: [
          /// #checkBox
          isActive
              ? const Icon(Icons.check_box)
              : const Icon(
                  Icons.check_box_outline_blank,
                  color: AppColors.c909090,
                ),

          SizedBox(
            width: 15 * width / 375,
          ),

          /// #shippingAddress
          Text(
            Strings.shippingAddress.text,
            style: AppTextStyles.nunitoSansRegular18
                .copyWith(color: AppColors.c808080),
          ),
        ],
      ),
    );
  }
}
