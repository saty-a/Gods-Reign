import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../app/styles/app_colors.dart';
import '../../app/styles/text_styles.dart';


class LoginOrRegisterBottomText extends StatelessWidget {
  const LoginOrRegisterBottomText(this.onTap,{required this.questionText, required this.registerOrLoginText,Key? key}) : super(key: key);
  final String questionText;
  final String registerOrLoginText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
          TextSpan(
            text: questionText,
            style:
            Styles.tsR16.copyWith(color: AppColors.hintTextColor),
          ),
          TextSpan(
            text: " $registerOrLoginText",
            style: Styles.tsSb16.copyWith(color: AppColors.primary),
            recognizer: TapGestureRecognizer()
              ..onTap = onTap
          )
        ]));
  }
}
