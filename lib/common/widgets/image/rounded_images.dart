import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius=true,
    this.backgroundColor,
    this.fit=BoxFit.contain,
    this.padding,
    this.isNetworkImage=false,
    this.onPressed,
    this.borderRadius= TSizes.md,
    this.border,
  });
  final double? width,height;
  final String imageUrl;
  final bool applyImageRadius;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;
  final BoxBorder? border;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
          border: border,
            color: backgroundColor
        ),
        child: ClipRRect(
            borderRadius:applyImageRadius? BorderRadius.circular(borderRadius): BorderRadius.zero,
            child:  Image(image: isNetworkImage? NetworkImage(imageUrl):AssetImage(imageUrl) as ImageProvider,fit: fit,)),
      ),
    );
  }
}