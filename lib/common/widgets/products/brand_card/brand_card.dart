import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/enums.dart';
import '../../../../utils/constants/sizes.dart';
import '../../custom_shapes/containers/circular_container.dart';
import '../../image/circular_image.dart';
import '../../texts/brand_text_with_verified_icon.dart';
class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    required this.dark, this.showBorder=true, required this.image, required this.text, required this.product,
  });

  final bool dark;
  final bool showBorder;
  final String image;
  final String text;
  final String product;

  @override
  Widget build(BuildContext context) {

    return CircularContainer(
      padding:const EdgeInsets.all(TSizes.sm),
      radius: TSizes.cardRadiusLg,
      showBorder: showBorder,
      background: Colors.transparent,
      child: Row(
        children: [
          ///Icon
          Flexible(child: CircularImages(image: image,overlayColor: dark? TColors.white:TColors.dark,)),

          const SizedBox(width: TSizes.spaceBtwItems/2,),

          Expanded(
            child: Column(
              mainAxisSize:MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BrandTitleWithVerifiedIcon(text: text, brandTextSize:TextSizes.large,),
                Text(
                  product,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}