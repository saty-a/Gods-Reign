import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:starter/app/data/values/strings.dart';
import 'package:starter/app/modules/auth/login/controllers/auth_login_controller.dart';
import 'package:starter/utils/widget_extensions/widget_extenions.dart';
import 'package:starter/widgets/buttons/primary_filled_button.dart';
import 'package:starter/widgets/text_field/custom_text_field.dart';
import '../../../../../utils/app_validations/app_validations.dart';
import '../../../../../widgets/buttons/buttons_with_icon_row.dart';
import '../../../../../widgets/buttons/common_button.dart';
import '../../../../../widgets/buttons/skip_for_now_button.dart';
import '../../../../../widgets/dividers/customizedDivider.dart';
import '../../../../../widgets/other/login_or_register_bottom_text.dart';
import '../../../../data/values/images.dart';
import '../../../../routes/app_pages.dart';
import '../../../../styles/app_colors.dart';
import '../../../../styles/text_styles.dart';
import '../../../widgets/textfields/textfield_heading_with _endText.dart';

class AuthLoginView extends GetView<AuthLoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Obx(() => SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Form(
                key: controller.loginFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    20.hb,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.login,
                          style:
                          Styles.tsSb30.copyWith(color: AppColors.grey900),
                        ),
                        SkipForNow(
                          onPressed: () async {
                            SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                            prefs.setString('token', '');
                            // Navigator.of(context).pushNamedAndRemoveUntil(
                            //     Routes.dashboard, (route) => false);
                          },
                        )
                      ],
                    ),
                    26.hb,
                    TextFieldHeadingWithEndHeading(
                      startText: AppStrings.emailOrPhone,
                      endText: AppStrings.loginWithOtp,
                      endTextStyle:
                      Styles.tsSb12.copyWith(color: AppColors.primary),
                      onTap: () {
                        // Navigator.pushNamed(context, Routes.loginWithOtpScreen);
                      },
                    ),
                    const SizedBox(height: 4.5),

                    /// Email or Phone
                    CustomTextField(
                      controller: controller.emailController,
                      hintText: AppStrings.enterEmailLabelText,
                      validator: AppValidations.emailOrPhoneValidation,
                      onChanged: (value) {
                        controller.emailOrPhoneValue(value);
                        if (value.isNotEmpty) {
                          controller.changeButtonStatus(true);
                        } else {
                          controller.changeButtonStatus(false);
                        }
                      },
                    ),
                    const SizedBox(height: 22.5),
                    TextFieldHeadingWithEndHeading(
                        startText: AppStrings.password,
                        endText: AppStrings.forgotPassword,
                        endTextStyle:
                        Styles.tsSb12.copyWith(color: AppColors.primary),
                        onTap: () {
                          //    Navigator.pushNamed(context, Routes.forgotScreen);
                        }),
                    const SizedBox(height: 4.5),

                    /// Password Validation
                    CustomTextField(
                      controller: controller.passwordController,
                      hintText: AppStrings.enterPassword,
                      validator: AppValidations.passwordValidation,
                      obscureText: controller.obscureText.value,
                      maxlines: 1,
                      suffixIcon: IconButton(
                        iconSize: 18,
                        onPressed: () {
                          controller.obscureText.value =
                          !controller.obscureText.value;
                        },
                        icon: controller.obscureText.value == true
                            ? SvgPicture.asset(Images.icEyeHideIcon)
                            : SvgPicture.asset(Images.icVisible),
                      ),
                      onChanged: (value) {
                        controller.passwordValue(value);
                        if (value.isNotEmpty) {
                          controller.changeButtonStatus(true);
                        } else {
                          controller.changeButtonStatus(false);
                        }
                      },
                    ),
                    50.hb,
                    CommonButton(
                        buttonText: AppStrings.loginButton,
                        isDisabled:
                        controller.buttonEnabled.value == false ? true : false,
                        textStyle:
                        Styles.tsb18.copyWith(color: AppColors.white),
                        color: AppColors.primary,
                        borderRadius: 10.0,
                        onPressed: () async {
                          if (controller.loginFormKey.currentState!
                              .validate()) {
                            SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                            prefs.setString('token', 'login');
                            // Navigator.pushNamedAndRemoveUntil(
                            //     context, Routes.dashboard, (route) => false);
                          }
                        }),
                    20.hb,
                    const CustomizedDivider(),
                    20.hb,
                    SocialLoginButtonsRow(
                        firstButtonText: AppStrings.google,
                        secondButtonText: AppStrings.apple,
                        firstButtonIconUrl: Images.icGoogleIcon,
                        secondButtonIconUrl: Images.icAppleIcon),
                    const Spacer(),
                    Center(
                      child: LoginOrRegisterBottomText(() {
                        Navigator.pushNamed(context, Routes.AUTH_SIGNUP);
                      },
                          questionText: AppStrings.dontHaveAnAccount,
                          registerOrLoginText: AppStrings.register),
                    ),
                    70.hb,
                  ],
                ),
              ),
            ),
          )),
        ),
      ),
    );
  }
}
