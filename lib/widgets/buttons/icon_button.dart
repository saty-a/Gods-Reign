import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../app/styles/app_colors.dart';

class SvgIconButton extends StatelessWidget {
  const SvgIconButton({Key? key, this.size = 28, required this.asset})
      : super(key: key);
  final double size;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 28,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.primary200,
          width: 0.34,
        ),
        color: AppColors.primary100,
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(asset),
    );
  }
}
