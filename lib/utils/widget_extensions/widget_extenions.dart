import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension WidgetExtention on Widget {
  Widget onTap(Function() onTap) => GestureDetector(
        onTap: onTap,
        child: this,
      );

  Widget only({
    double top = 0,
    double bottom = 0,
    double left = 0,
    double right = 0,

  }) =>
      Padding(
        padding:
            EdgeInsets.only(top: top, bottom: bottom, left: left, right: right),
        child: this,
      );

  Widget hp(double size) => Padding(
        padding: EdgeInsets.symmetric(horizontal: size),
        child: this,
      );
  Widget vp(double size) => Padding(
        padding: EdgeInsets.symmetric(vertical: size),
        child: this,
      );

  Widget tp(double height) => Padding(
        padding: EdgeInsets.only(top: height),
        child: this,
      );

  Widget lp(double width) => Padding(
        padding: EdgeInsets.only(left: width),
        child: this,
      );

  Widget rp(double width) => Padding(
        padding: EdgeInsets.only(right: width),
        child: this,
      );

  Widget bp(double height) => Padding(
        padding: EdgeInsets.only(bottom: height),
        child: this,
      );

  Widget all(double size) => Padding(
        padding: EdgeInsets.all(size),
        child: this,
      );
  Widget sp(double horizontal, double vertical) => Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: this,
      );
}

extension SizedBoxExt on num {
  SizedBox get hb => SizedBox(height: toDouble().h);
  SizedBox get wb => SizedBox(width: toDouble().w);
}
