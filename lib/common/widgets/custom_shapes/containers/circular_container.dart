import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.radius=TSizes.cardRadiusLg,
    this.child,
    this.background=TColors.white,
    this.margin,
    this.showBorder=false,
    this.borderColor=TColors.borderPrimary
  });
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final double radius;
  final Widget? child;
  final Color background;
  final EdgeInsets? margin;
  final bool showBorder;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:height,
      width: width,
      margin: margin,
      padding:  padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: background,
        border: showBorder? Border.all(color: borderColor):null
      ),
      child: child,
    );
  }
}