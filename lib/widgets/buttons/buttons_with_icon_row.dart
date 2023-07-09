import 'package:flutter/material.dart';

import 'common_button_with_icon.dart';

class SocialLoginButtonsRow extends StatelessWidget {
  const SocialLoginButtonsRow(
      {required this.firstButtonText,
      required this.secondButtonText,
      required this.firstButtonIconUrl,
      required this.secondButtonIconUrl,
      this.onFirstButtonPressed,
      this.isSvg = true,
      Key? key})
      : super(key: key);
  final String firstButtonText;
  final String secondButtonText;
  final String firstButtonIconUrl;
  final String secondButtonIconUrl;
  final VoidCallback? onFirstButtonPressed;
  final bool isSvg;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: SocialLoginButton(
          onPressed: onFirstButtonPressed ?? () {},
          buttonText: firstButtonText,
          imagePath: firstButtonIconUrl,
          svgPicture: isSvg,
        )),
        const SizedBox(width: 20),
        Expanded(
            child: SocialLoginButton(
          onPressed: () {},
          buttonText: secondButtonText,
          imagePath: secondButtonIconUrl,
        ))
      ],
    );
  }
}
