import 'package:flutter/material.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';

class TextFieldHeadingWithEndHeading extends StatelessWidget {
  const TextFieldHeadingWithEndHeading(
      {required this.startText,
      required this.endText,
      this.endTextStyle,
      this.startTextStyle,
      this.onTap,
      Key? key})
      : super(key: key);
  final String startText;
  final String endText;
  final TextStyle? endTextStyle;
  final TextStyle? startTextStyle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          startText,
          style: startTextStyle ??
              Styles.tsR16.copyWith(color: AppColors.hintTextColor),
        ),
        GestureDetector(
          onTap: onTap ?? () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
            child: Text(
              endText,
              style: endTextStyle ??
                  Styles.tsSb12.copyWith(color: AppColors.primary),
            ),
          ),
        )
      ],
    );
  }
}
