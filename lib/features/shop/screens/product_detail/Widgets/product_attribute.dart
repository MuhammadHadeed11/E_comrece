import 'package:ecommernce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommernce/common/widgets/texts/product_price_text.dart';
import 'package:ecommernce/common/widgets/texts/product_title_text.dart';
import 'package:ecommernce/common/widgets/texts/usable_row.dart';
import 'package:ecommernce/utils/constants/colors.dart';
import 'package:ecommernce/utils/constants/sizes.dart';
import 'package:ecommernce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
class ProductAttribute extends StatelessWidget {
  const ProductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        CircularContainer(
          padding: const EdgeInsets.all(TSizes.md),
          background: dark? TColors.darkerGrey:TColors.darkGrey,
          child: Row(

            children: [
              const UsableRow(text: "Variation", showActionButton: false,),
              const SizedBox(width: TSizes.spaceBtwItems,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const ProductTitleText(title: 'Price',smallSize: true,),
                      const SizedBox(width: TSizes.spaceBtwItems,),
                      Text('\$25', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                      const SizedBox(width: TSizes.spaceBtwItems,),
                      const ProductPriceText(price: '20')
                    ],
                  ),
                  Row(
                    children: [
                      const ProductTitleText(title: "Stock:", smallSize: true,),
                      const SizedBox(width: TSizes.spaceBtwItems,),
                      Text("In Stock", style: Theme.of(context).textTheme.titleMedium)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        const UsableRow(text: "Colors", showActionButton: false,),
        const SizedBox(height: TSizes.spaceBtwItems,),
        const UsableRow(text: "Sizes", showActionButton: false,),
      ],
    );
  }
}
