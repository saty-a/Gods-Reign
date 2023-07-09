import 'package:flutter/material.dart';

import '../../app/styles/app_colors.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({Key? key, this.height = 5}) : super(key: key);
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: AppColors.grey100,
    );
  }
}
