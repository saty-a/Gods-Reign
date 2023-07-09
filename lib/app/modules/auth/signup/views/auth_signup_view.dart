import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:starter/utils/widget_extensions/widget_extenions.dart';

import '../../../../../utils/app_regex/app_regex.dart';
import '../../../../../utils/app_validations/app_validations.dart';
import '../../../../../widgets/buttons/buttons_with_icon_row.dart';
import '../../../../../widgets/buttons/common_button.dart';
import '../../../../../widgets/dividers/customizedDivider.dart';
import '../../../../../widgets/other/login_or_register_bottom_text.dart';
import '../../../../../widgets/text_field/custom_text_field.dart';
import '../../../../data/values/images.dart';
import '../../../../data/values/strings.dart';
import '../../../../routes/app_pages.dart';
import '../../../../styles/app_colors.dart';
import '../../../../styles/text_styles.dart';
import '../../../widgets/skip_for_now_button.dart';
import '../../../widgets/textfields/text_textfield.dart';
import '../../../widgets/textfields/textfield_heading_with _endText.dart';
import '../controllers/auth_signup_controller.dart';

class AuthSignupView extends GetView<AuthSignupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Obx(() => SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Padding(
                padding: const EdgeInsets.only(top: 14.5, left: 20, right: 20),
                child: Form(
                  key: controller.signUpKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Signup and skip now button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppStrings.signUp,
                            style:
                                Styles.tsSb30.copyWith(color: AppColors.black),
                          ),
                          SkipForNow(onPressed: () {
                            //Navigator.pushNamedAndRemoveUntil(context, Routes.dashboard, (route) => false);
                          })
                        ],
                      ),

                      /// Spacing
                      const SizedBox(height: 28),

                      /// Name
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextAligned(text: AppStrings.firstName),
                              const SizedBox(height: 6.5),
                              CustomTextField(
                                hintText: AppStrings.firstNameHint,
                                controller: controller.firstNameController,
                                maxLength: 15,
                                focusNode: controller.firstNameFocus,
                                validator: AppValidations.nameValidation,
                                onChanged: (value) {
                                  controller.firstNameValue(value);
                                  if (value.isNotEmpty) {
                                    controller.changeButtonStatus(true);
                                  } else {
                                    controller.changeButtonStatus(false);
                                  }
                                },
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.allow(
                                      RegExp("[a-zA-Z]")),
                                ],
                              )
                            ],
                          )),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextAligned(text: AppStrings.lastName),
                                const SizedBox(height: 6.5),
                                CustomTextField(
                                  hintText: AppStrings.lastNameHint,
                                  controller: controller.lastNameController,
                                  focusNode: controller.lastNameFocus,
                                  maxLength: 15,
                                  validator: AppValidations.nameValidation,
                                  onChanged: (value) {
                                    controller.lastNameValue(value);
                                    if (value.isNotEmpty) {
                                      controller.changeButtonStatus(true);
                                    } else {
                                      controller.changeButtonStatus(false);
                                    }
                                  },
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.allow(
                                        RegExp("[a-zA-Z]")),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 12.5),
                      TextAligned(text: AppStrings.mobileNumber),
                      const SizedBox(height: 3.5),

                      /// Mobile Number TextField
                      CustomTextField(
                        maxLength: 10,
                        prefixIcon: Container(
                            margin: const EdgeInsets.only(
                                left: 10, top: 0, bottom: 0),
                            height: 55.h,
                            width: 48.w,
                            child: Row(
                              children: [
                                Text(
                                  "+91",
                                  style: Styles.tsR16
                                      .copyWith(color: Colors.black),
                                ),
                                SizedBox(
                                  height: 20.h,
                                  child: const VerticalDivider(
                                    color: AppColors.grey600,
                                    thickness: 1,
                                  ),
                                )
                              ],
                            )),
                        focusNode: controller.mobileNumberFocus,
                        controller: controller.mobileNumberController,
                        validator: AppValidations.mobileValidation,
                        inputType: const TextInputType.numberWithOptions(),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              AppRegex.digitsOnly),
                          FilteringTextInputFormatter.deny(AppRegex.zero)
                        ],
                        hintText: AppStrings.mobileNumberHintSignup,
                        onChanged: (value) {
                          controller.mobileNumberValue(value);
                          if (value.isNotEmpty) {
                            controller.changeButtonStatus(true);
                          } else {
                            controller.changeButtonStatus(false);
                          }
                        },
                      ),
                      const SizedBox(height: 12.5),
                      TextFieldHeadingWithEndHeading(
                        startText: AppStrings.email,
                        endText: AppStrings.optional,
                        endTextStyle:
                            Styles.tsSb12.copyWith(color: AppColors.grey500),
                      ),
                      const SizedBox(height: 3.5),

                      /// Email
                      CustomTextField(
                        hintText: AppStrings.enterYourEmailHintText,
                        maxLength: 25,
                        focusNode: controller.emailFocus,
                        controller: controller.emailController,
                        validator: AppValidations.emailValidation,
                        onChanged: (value) {
                          controller.emailValue(value);
                        },
                      ),
                      const SizedBox(height: 12.5),
                      TextAligned(text: AppStrings.password),
                      const SizedBox(height: 3.5),

                      /// Password Text Field
                      CustomTextField(
                        hintText: AppStrings.createYourPasswordHintText,
                        maxLength: 25,
                        maxlines: 1,
                        focusNode: controller.passwordFocus,
                        obscureText: controller.obscureText.value,
                        controller: controller.passwordController,
                        validator: AppValidations.passwordValidation,
                        onChanged: (value) {
                          controller.passwordValue(value);
                          if (value.isNotEmpty) {
                            controller.changeButtonStatus(true);
                          } else {
                            controller.changeButtonStatus(false);
                          }
                        },
                        suffixIcon: IconButton(
                            iconSize: 18,
                            onPressed: () {
                              controller.obscureTextValue(
                                  !controller.obscureText.value);
                            },
                            icon: controller.obscureText.value == true
                                ? SvgPicture.asset(Images.icEyeHideIcon)
                                : SvgPicture.asset(Images.icVisible)),
                      ),
                      const SizedBox(height: 12.5),
                      TextAligned(text: AppStrings.confirmPassword),
                      const SizedBox(height: 3.5),

                      /// Confirm Password
                      CustomTextField(
                          hintText: AppStrings.confirmYourPasswordHintText,
                          maxLength: 25,
                          maxlines: 1,
                          focusNode: controller.confirmPasswordFocus,
                          obscureText: controller.obscureText2.value,
                          controller: controller.confirmPasswordController,
                          onChanged: (value) {
                            controller.confirmPasswordValue(value);
                            if (value.isNotEmpty) {
                              controller.changeButtonStatus(true);
                            } else {
                              controller.changeButtonStatus(false);
                            }
                          },
                          validator: controller.passwordMatch,
                          suffixIcon: IconButton(
                              iconSize: 18,
                              onPressed: () {
                                controller.obscureText2Value(
                                    !controller.obscureText2.value);
                              },
                              icon: controller.obscureText2.value == true
                                  ? SvgPicture.asset(Images.icEyeHideIcon)
                                  : SvgPicture.asset(Images.icVisible))),
                      const SizedBox(height: 40),

                      /// Sign up button
                      CommonButton(
                        isDisabled:
                            controller.buttonEnabled == true ? false : true,
                        buttonText: AppStrings.signUpButton,
                        textStyle:
                            Styles.tsb18.copyWith(color: AppColors.white),
                        color: AppColors.primary,
                        borderRadius: 10.0,
                        onPressed: () {
                          if (controller.signUpKey.currentState!.validate()) {
                            //Navigator.pushNamed(context, Routes.dashboard);
                            // Navigator.pushNamedAndRemoveUntil(context, Routes.dashboard, (route) => false);
                          }
                        },
                      ),
                      const SizedBox(height: 56),

                      /// Divider
                      const CustomizedDivider(),
                      const SizedBox(height: 40),

                      /// Google & Apple Button
                      SocialLoginButtonsRow(
                          firstButtonText: AppStrings.google,
                          secondButtonText: AppStrings.apple,
                          firstButtonIconUrl: Images.icGoogleIcon,
                          secondButtonIconUrl: Images.icAppleIcon),
                      const SizedBox(height: 35),

                      /// Login or Register Button
                      Center(
                        child: LoginOrRegisterBottomText(() {
                          Navigator.pushNamedAndRemoveUntil(
                              context, Routes.AUTH_LOGIN, (route) => false);
                        },
                            questionText: AppStrings.alreadyHaveAnAccount,
                            registerOrLoginText: AppStrings.login),
                      ).only(bottom: 33.h)
                    ],
                  ),
                )),
          )),
    ));
  }
}
