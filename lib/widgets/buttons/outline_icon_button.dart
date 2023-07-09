import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:starter/utils/widget_extensions/widget_extenions.dart';

import '../../app/styles/app_colors.dart';
import '../../app/styles/text_styles.dart';

class OutlineIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color? color;
  final Color? borderColor;
  final double? borderRadius;
  final EdgeInsets padding;
  final bool isExpanded;
  final String buttonText;
  final TextStyle? textStyle;
  final String prefixIcon;
  final String suffixIcon;

  const OutlineIconButton({
    Key? key,
    required this.onPressed,
    this.color,
    this.borderColor,
    this.borderRadius,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    this.isExpanded = true,
    required this.buttonText,
    this.textStyle,
    required this.prefixIcon,
    required this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color ?? Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor ?? AppColors.grey500),
        borderRadius: BorderRadius.circular(borderRadius ?? 10),
      ),
      elevation: 0,
      padding: padding,
      minWidth: isExpanded ? double.infinity : null,
      child: Row(
        children: [
          SvgPicture.asset(prefixIcon),
          23.wb,
          Expanded(
            child: Text(
              buttonText,
              style: textStyle ??
                  Styles.tsSb16.copyWith(
                    color: AppColors.grey700,
                  ),
            ),
          ),
          SvgPicture.asset(suffixIcon),
        ],
      ),
    );
  }
}
