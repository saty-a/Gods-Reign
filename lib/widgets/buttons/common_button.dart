import 'package:flutter/material.dart';

import '../../app/styles/app_colors.dart';
import '../../app/styles/text_styles.dart';

class CommonButton extends StatelessWidget {
  const CommonButton(
      {required this.buttonText,
      required this.onPressed,
      required this.isDisabled,
      Key? key,
      this.color,
      this.borderRadius,
      this.textStyle,
      this.isExpanded = true,
      this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 20)})
      : super(key: key);
  final VoidCallback onPressed;
  final String buttonText;
  final TextStyle? textStyle;
  final Color? color;
  final double? borderRadius;
  final bool isExpanded;
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
        minWidth: isExpanded ? double.infinity : null,
        child: Text(
          buttonText,
          style: textStyle ?? Styles.tsSb16.copyWith(color: AppColors.white),
          textAlign: TextAlign.center,
        ));
  }
}
