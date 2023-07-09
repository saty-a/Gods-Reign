import 'package:flutter/material.dart';
import 'package:starter/app/styles/text_styles.dart';

import '../../app/data/values/strings.dart';
import '../../app/styles/app_colors.dart';

class SkipForNow extends StatelessWidget {
  const SkipForNow(
      {required this.onPressed,
      Key? key,
      this.textStyle,
      this.text = AppStrings.skipForNow})
      : super(key: key);
  final VoidCallback onPressed;
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryLight,
          borderRadius: BorderRadius.circular(12.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
        child: Row(
          children: [
           // const SizedBox(width: 10),
            Text(text,
                style: textStyle ??
                    Styles.tsSb12.copyWith(color: AppColors.primary)),
            const SizedBox(width: 5),
            const Icon(Icons.arrow_forward_ios_outlined,
                size: 10, color: AppColors.primary),
            //const SizedBox(width: 10)
          ],
        ),
      ),
    );
  }
}
