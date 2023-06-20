import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/theme/text_styles.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final bool isObscure;
  final TextEditingController? controller;
  final bool wordTextCapitalization;

  const CustomTextField({
    super.key,
    required this.labelText,
    required this.isObscure,
    this.controller,
    this.wordTextCapitalization = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscure = false;
  @override
  void initState() {
    super.initState();
    obscure = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    const eye = CupertinoIcons.eye;
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: widget.labelText,
        suffixIcon: widget.isObscure
            ? GestureDetector(
          onTap: () {
            setState(() {
              eye == CupertinoIcons.eye
                  ? CupertinoIcons.eye
                  : CupertinoIcons.eye_slash;
              obscure = !obscure;
            });
          },
          child: Icon(
            obscure
                ? CupertinoIcons.eye_slash
                : CupertinoIcons.eye,
            color: AppColors.c303030,
          ),
        )
            : null,
        labelStyle: AppTextStyles.nunitoSansRegular18.copyWith(
          color: AppColors.c909090,
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.cE0E0E0, width: 2),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.cE0E0E0, width: 2),
        ),
      ),
      obscureText: obscure,
      textCapitalization: widget.wordTextCapitalization ? TextCapitalization.words : TextCapitalization.none,
      textInputAction: TextInputAction.next,
      cursorColor: AppColors.cE0E0E0,
      style: AppTextStyles.nunitoSansRegular18.copyWith(
          decoration: TextDecoration.none
      ),
    );
  }
}