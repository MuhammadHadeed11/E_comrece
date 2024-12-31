import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
class CircularImages extends StatelessWidget {
  const CircularImages({
    super.key,
    this.fit=BoxFit.cover,
    required this.image,
    this.isNetworking=false,
    this.overlayColor,
    this.width=56,
    this.height=56,
    this.padding=TSizes.sm, this.border,
  });
  final BoxFit? fit;
  final String image;
  final bool isNetworking;
  final Color? overlayColor;
  final double width,height, padding;
  final BoxBorder? border;
  @override
  Widget build(BuildContext context) {
    final dark= THelperFunctions.isDarkMode(context);
      return Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
            color: dark? TColors.black:TColors.white,
            borderRadius: BorderRadius.circular(100),
          border: border
        ),
          child: Image(
              fit: fit,
              image: isNetworking? NetworkImage(image): AssetImage(image) as ImageProvider,
              color: overlayColor),
    );
  }
}
