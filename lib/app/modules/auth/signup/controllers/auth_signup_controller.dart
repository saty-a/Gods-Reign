import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../data/values/strings.dart';

class AuthSignupController extends GetxController {
  //TODO: Implement AuthSignupController

  RxBool buttonEnabled=false.obs;
  RxString firstName="".obs;
  RxString lastName="".obs;
  RxString email="".obs;
  RxString password="".obs;
  RxString confirmPassword="".obs;
  RxString mobileNumber="".obs;
  RxBool obscureText=true.obs;
  RxBool isPasswordMatch=false.obs;
  RxBool obscureText2=true.obs;
  RxString onFlagSelected=AppStrings.flagEmoji.obs;

  /// Form Keys
  GlobalKey<FormState> signUpKey = GlobalKey<FormState>();

  /// Text Editing Controller
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  FocusNode firstNameFocus = FocusNode();
  FocusNode lastNameFocus = FocusNode();
  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  FocusNode confirmPasswordFocus = FocusNode();
  FocusNode mobileNumberFocus = FocusNode();


  onChangedFlag(String val) {
    onFlagSelected.value=val;
  }

  onButtonEnable(bool val) {
    buttonEnabled.value=val;
  }

  firstNameValue(String val) {
   firstName.value=val;
  }

  lastNameValue(String val) {
    lastName.value=val;
  }

  emailValue(String val) {
    email.value=val;
  }

  passwordValue(String val) {
    password.value=val;
  }

  confirmPasswordValue(String val) {
    confirmPassword.value=val;
  }

  mobileNumberValue(String val) {
    mobileNumber.value=val;
  }

  obscureTextValue(bool val) {
    obscureText.value=val;
  }

  obscureText2Value(bool val) {
    obscureText2.value=val;
  }

  isPasswordMatchFunc(bool val) {
    isPasswordMatch.value=val;
  }

  /// Change Button Status
  void changeButtonStatus(bool value) {
    if (firstName.value.isNotEmpty &&
        lastName.value.isNotEmpty &&
        password.value.isNotEmpty &&
        confirmPassword.value.isNotEmpty &&
        mobileNumber.value.isNotEmpty) {
      buttonEnabled.value=value;
    } else {
      buttonEnabled.value=false;
    }
  }

  /// Password Match
  String? passwordMatch(String? a) {
    if (password.value.length >= 8) {
      if (password.value != a) {
        return "Password do not match";
      }
    }
    return null;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
