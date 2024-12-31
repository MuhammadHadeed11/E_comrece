import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/sizes.dart';
import 'brand_title_text.dart';
class BrandTitleWithVerifiedIcon extends StatelessWidget {
  const BrandTitleWithVerifiedIcon({
    super.key,
    required this.text,
    this.maxLine=2,
    this.textColor,
    this.iconColor=TColors.primary,
    this.textAlign=TextAlign.left,
    this.brandTextSize=TextSizes.small,
  });
  final String text;
  final int maxLine;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: BrandTitleText(
              title: text,
              maxLine: maxLine,
              textAlign: textAlign,
            brandTextSizes: brandTextSize,
            )),
        const SizedBox(width: TSizes.xs,),
        const Icon(Iconsax.verify5, color: TColors.primary, size: TSizes.iconXs,)
      ],
    );
  }
}

