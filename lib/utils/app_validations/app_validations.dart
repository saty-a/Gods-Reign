import 'dart:math';

import '../app_regex/app_regex.dart';

/// All Validations here.

class AppValidations {
  static String? mobileValidation(String? mobile) {
    if (mobile == null || mobile.trim().isEmpty) {
      return 'Please enter mobile number.';
    } else if (!AppRegex.phoneNumber.hasMatch(mobile!)) {
      return "Enter a valid mobile number";
    }
    return null;
  }

  /// Name Validation
  static String? nameValidation(String? name) {
    if (name == null || name.trim().isEmpty) {
      return 'Field cannot be empty.';
    }
    return null;
  }

  static String? upiValidation(String? upId){
    if(upId == null || upId.trim().isEmpty){
      return 'Field cannot be empty';
    }else if(!AppRegex.upi.hasMatch(upId!)){
      return 'Enter a valid upi';
    }
  }

  static String? passwordValidation(String? name) {
    if (name == null || name.trim().isEmpty) {
      return 'Field cannot be empty.';
    } else if (name.length < 8) {
      return "Must be atleast 8 characters";
    }
    return null;
  }

  /// Email Validation
  static String? emailValidation(String? email) {
    if (email?.trim().isEmpty ?? true) {
      return null;
    } else if (!AppRegex.emailRegex.hasMatch(email!)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  /// Email or Phone Validation
  static String? emailOrPhoneValidation(String? email) {
    if (email?.trim().isEmpty ?? true) {
      return 'Field cannot be empty';
    } else if (!AppRegex.emailorPhone.hasMatch(email!)) {
      return 'Enter a valid email or phone number';
    }
    return null;
  }

  /// Bank Account Number
  static String? bankAccountValidation(String? accountNo){
    if(accountNo?.trim().isEmpty ?? true){
      return 'Field cannot be empty';
    }else if(!AppRegex.accountNo.hasMatch(accountNo!)){
      return 'Enter a valid account number';
    }
    return null;
  }

  /// Card Expiration
  static String? expirationValidation(String? expiry){
    if(expiry?.trim().isEmpty ?? true){
      return 'Empty field';
    }else if(!AppRegex.expiration.hasMatch(expiry!)){
      return 'Not Valid';
    }
    return null;
  }

  static String? cvvValidation(String? cvv){
    if(cvv?.trim().isEmpty ?? true){
      return 'Empty field';
    }else if(!AppRegex.cvv.hasMatch(cvv!)){
      return 'Not Valid';
    }
    return null;
  }
}
