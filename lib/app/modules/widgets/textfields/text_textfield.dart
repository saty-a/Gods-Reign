import 'package:flutter/material.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';

class TextAligned extends StatelessWidget {
  const TextAligned({required this.text, Key? key, this.styles})
      : super(key: key);
  final String text;
  final TextStyle? styles;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: styles ?? Styles.tsR16.copyWith(color: AppColors.grey900),
    );
  }
}
