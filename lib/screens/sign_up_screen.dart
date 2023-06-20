import 'package:flutter/material.dart';
import 'package:furniture_app/services/app_routes.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/l10n/app_localizations.dart';
import 'package:furniture_app/services/theme/text_styles.dart';
import 'package:furniture_app/views/auth_components/logo.dart';
import 'package:furniture_app/views/custom_text_field.dart';
import 'package:furniture_app/views/login_button.dart';
import 'package:furniture_app/controllers/sign_up_controller.dart';

class SignUpScreen extends StatefulWidget {
  static const id = "/signUp";

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late final SignUpController controller;
  
  @override
  void initState() {
    super.initState();
    controller = SignUpController(updater: setState);
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppLocalizations l10n = AppLocalizations.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        minimum: const EdgeInsets.only(right: 30, bottom: 50),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                /// Logo
                const Logo(),

                /// Text: Welcome Back
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Text(
                      l10n.welcome,
                      style: AppTextStyles.merriWeatherBold24.copyWith(
                        color: AppColors.c303030,
                        letterSpacing: 1.7,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: AppColors.cFFFFFF,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 0),
                        blurRadius: 10,
                        color: Colors.grey.shade300,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        /// Input: Name
                        const SizedBox(height: 35),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: CustomTextField(
                            controller: controller.nameController,
                            labelText: l10n.name,
                            isObscure: false,
                            wordTextCapitalization: true,
                          ),
                        ),

                        /// Input: Email
                        const SizedBox(height: 35),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: CustomTextField(
                            controller: controller.emailController,
                            labelText: l10n.email,
                            isObscure: false,
                          ),
                        ),

                        /// Input: Password
                        const SizedBox(height: 35),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: CustomTextField(
                            controller: controller.passwordController,
                            labelText: l10n.password,
                            isObscure: true,
                          ),
                        ),

                        /// Input: Confirm password
                        const SizedBox(height: 35),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: CustomTextField(
                            controller: controller.rePasswordController,
                            labelText: l10n.confirmPassword,
                            isObscure: true,
                          ),
                        ),

                        /// Button: Sign up
                        const SizedBox(height: 50),
                        AppMainButton(
                          onPressWithContext: controller.signUp,
                          text: l10n.signUp,
                        ),

                        /// Text: All ready have account
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              l10n.alreadyHaveAccount,
                              style:
                                  AppTextStyles.nunitoSansSemiBold14.copyWith(
                                color: AppColors.c808080,
                              ),
                            ),
                            const SizedBox(width: 8),
                            GestureDetector(
                              onTap: () => AppRoutes.pushReplaceSignIn(context),
                              child: Text(
                                l10n.signIn,
                                style: AppTextStyles.nunitoSansBold14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
