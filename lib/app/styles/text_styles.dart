import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Styles {
  static const TextStyle tsB22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle tsB32 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle tsL10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle tsL12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle tsL14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle tsL16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle tsL18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle tsL20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle tsL24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle tsL30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle tsR10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle tsR12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle tsR14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle tsR16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle tsR18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle tsR20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle tsR24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle tsR30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle tsM10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle tsM12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle tsM14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle tsM16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle tsM18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle tsM20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle tsM24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle tsM30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle tsSb10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle tsSb12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle tsSb14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static TextStyle tsSb16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle tsSb18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static TextStyle tsSb20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle tsSb24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static TextStyle tsSb30 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle tsb10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle tsb12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle tsb14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle tsb16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle tsb18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  static TextStyle tsb20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle tsb24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle tsb30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w700,
  );

  /// Function used to set the status bar color to the widget
  static void setStatusBarTheme(
      {Color topBarColor = Colors.transparent,
      bool shouldShowDarkIcon = true}) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: topBarColor, //top bar color
      statusBarIconBrightness: shouldShowDarkIcon
          ? Brightness.dark
          : Brightness.light, //top bar icons//bottom bar color
      systemNavigationBarIconBrightness: shouldShowDarkIcon
          ? Brightness.dark
          : Brightness.light, //bottom bar icons
    ));
  }

  /// Function used set the device orientation of the app
  static void setDeviceOrientationOfApp() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
