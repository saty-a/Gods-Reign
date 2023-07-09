import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:starter/utils/widget_extensions/widget_extenions.dart';

import '../../app/data/values/images.dart';
import '../../app/styles/app_colors.dart';
import '../../app/styles/text_styles.dart';

class SuffixIconButton extends StatelessWidget {
  const SuffixIconButton(
      {required this.buttonText,
      required this.onPressed,
      required this.isDisabled,
      Key? key,
      this.color,
      this.borderRadius,
      this.textStyle,
      this.padding = const EdgeInsets.symmetric(horizontal: 67, vertical: 16)})
      : super(key: key);
  final VoidCallback onPressed;
  final String buttonText;
  final TextStyle? textStyle;
  final Color? color;
  final double? borderRadius;
  final EdgeInsets padding;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        disabledColor: AppColors.primary.withOpacity(0.2),
        onPressed: isDisabled == true ? null : onPressed,
        color: color ?? AppColors.primary,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10.0)),
        padding: padding,
        child: Row(
          children: [
            Text(
              buttonText,
              style:
                  textStyle ?? Styles.tsSb16.copyWith(color: AppColors.white),
              textAlign: TextAlign.center,
            ),
            7.wb,
            SvgPicture.asset(
              Images.icForwardArrow,
              color: AppColors.white,
              height: 10.h,
              width: 6.w,
            )
          ],
        ));
  }
}
