import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:starter/app/data/models/dto/response.dart';
import 'package:starter/app/data/models/request/auth_request.dart';
import 'package:starter/app/data/repository/user_repository.dart';
import 'package:starter/app/data/values/strings.dart';
import 'package:starter/app/routes/app_pages.dart';
import 'package:starter/base/base_controller.dart';
import 'package:starter/utils/helper/text_field_wrapper.dart';
import 'package:starter/utils/helper/validators.dart';
import 'package:starter/utils/loading/loading_utils.dart';

class AuthLoginController extends BaseController<UserRepository> {
  final mobileWrapper = TextFieldWrapper();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  var obscureText=true.obs;
  var passText="".obs;
  var buttonEnabled=false.obs;
  var emailOrPhone="".obs;


  /// email
  emailOrPhoneValue(String val) {
    emailOrPhone.value=val;
  }

  /// password
  passwordValue(String val) {
    passText.value=val;
  }

  /// Change Button Status
  void changeButtonStatus(bool value) {
    if (emailOrPhone.value.isNotEmpty && passText.value.isNotEmpty) {
      buttonEnabled.value=value;
    } else {
      buttonEnabled.value=false;
    }
  }

}
