import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/sign_in_controller.dart';
import 'package:furniture_app/services/app_routes.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/l10n/app_localizations.dart';
import 'package:furniture_app/services/theme/text_styles.dart';
import 'package:furniture_app/views/auth_components/logo.dart';
import 'package:furniture_app/views/custom_text_field.dart';
import 'package:furniture_app/views/login_button.dart';

class SignInScreen extends StatefulWidget {
  static const id = "/signIn";

  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  late final SignInController controller;

  @override
  void initState() {
    super.initState();
    controller = SignInController(updater: setState);
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
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SafeArea(
            top: false,
            minimum: const EdgeInsets.only(right: 30, bottom: 50),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    /// Logo
                    const Logo(),

                    /// Text: Hello
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          l10n.hello,
                          style: AppTextStyles.merriWeatherRegular30.copyWith(
                            color: AppColors.c909090,
                          ),
                        ),
                      ),
                    ),

                    /// Text: Welcome Back
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 27, left: 30),
                        child: Text(
                          l10n.welcomeBack,
                          style: AppTextStyles.merriWeatherBold24.copyWith(
                            color: AppColors.c303030,
                            letterSpacing: 1.5,
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

                            /// Input: Email
                            const SizedBox(height: 35),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: CustomTextField(
                                controller: controller.passwordController,
                                labelText: l10n.password,
                                isObscure: true,
                              ),
                            ),

                            /// Text: Forgot Password
                            const SizedBox(height: 35),
                            Text(
                              l10n.forgotPassword,
                              style: AppTextStyles.nunitoSansSemiBold18,
                            ),

                            /// Button: Sign in
                            const SizedBox(height: 40),
                            Builder(
                              builder: (context) {
                                return AppMainButton(
                                  onPressWithContext: controller.signIn,
                                  text: l10n.signIn,
                                );
                              }
                            ),

                            /// Text: Sign up
                            const SizedBox(height: 30),
                            GestureDetector(
                              onTap: () => AppRoutes.pushReplaceSignUp(context),
                              child: Text(
                                l10n.signUp,
                                style: AppTextStyles.nunitoSansSemiBold18,
                              ),
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

          if(controller.isLoading)
            const Center(
              child: CircularProgressIndicator(color: Colors.black,),
            ),
        ],
      ),
    );
  }
}






