import 'package:ecommernce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/image/circular_image.dart';
import '../../../../../common/widgets/texts/brand_text_with_verified_icon.dart';
import '../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/enums.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_srings.dart';
class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          children: [
            CircularContainer(
              radius: TSizes.sm,
              background: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.xs),
              child: Text('25%' , style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
            ),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text("\$120", style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text("\$100", style: Theme.of(context).textTheme.headlineSmall),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        ///Product Name
        const Row(
          children: [
            ProductTitleText(title: TText.green_nike_air_shoes,smallSize: false,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        const Row(
          children: [
            ProductTitleText(title: "Stock:",smallSize: true,),
            SizedBox(width: TSizes.spaceBtwItems,),
            ProductTitleText(title: "In Stock",smallSize: false,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Row(
            children: [
              CircularImages(image: TImages.nikeLogo, height: 32,width: 32,overlayColor: dark? TColors.white:TColors.black,),
              const BrandTitleWithVerifiedIcon(text: 'Nike', brandTextSize:TextSizes.medium,),
            ])
      ],
    );
  }
}
