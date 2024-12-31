import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../custom_shapes/containers/circular_container.dart';
import '../products/brand_card/brand_card.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.dark, required this.images,
  });
  final List<String> images;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return CircularContainer(
      radius: TSizes.cardRadiusLg,
      showBorder: true,
      borderColor: TColors.darkGrey,
      background: Colors.transparent,
      margin:const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          BrandCard(dark: dark,showBorder: false, image: TImages.nikeLogo, text: "Nike", product: "300 Products"),
          Row(children: images.map((image)=> brandTopProductImageWidget(image, context)).toList()),
          const SizedBox(height: TSizes.spaceBtwItems/2,)

        ],
      ),
    );
  }
  Widget brandTopProductImageWidget(String image,context){
    return Expanded(
      child: CircularContainer(
        height: 100,
        radius: TSizes.cardRadiusLg,
        margin: const EdgeInsets.only(right: TSizes.md),
        background: dark? TColors.darkerGrey:TColors.light,
        child:  Image(
            fit: BoxFit.contain,
            image: AssetImage(image)),
      ),
    );
  }
}