import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../app/styles/app_colors.dart';
import '../../app/styles/text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {required this.onPressed,
      required this.buttonText,
      required this.imagePath,
      Key? key,
      this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      this.svgPicture = true,
      this.color,
      this.borderRadius})
      : super(key: key);
  final VoidCallback onPressed;
  final String buttonText;
  final Color? color;
  final bool svgPicture;
  final double? borderRadius;
  final String imagePath;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        color: color ?? Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
        ),
        padding: padding,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            svgPicture == true
                ? SvgPicture.asset(imagePath)
                : Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    height: 24.h,
                    width: 24.w,
                  ),
            SizedBox(width: 14.w),
            Text(
              buttonText,
              style: Styles.tsSb18.copyWith(color: AppColors.grey700),
            )
          ],
        ));
  }
}
