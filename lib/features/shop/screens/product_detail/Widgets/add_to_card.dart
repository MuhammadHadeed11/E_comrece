import 'package:ecommernce/common/widgets/icon/circular_icon.dart';
import 'package:ecommernce/utils/constants/colors.dart';
import 'package:ecommernce/utils/constants/sizes.dart';
import 'package:ecommernce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class AddToCard extends StatelessWidget {
  const AddToCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace/2),
      decoration: BoxDecoration(
        color: dark? TColors.darkerGrey:TColors.light,
        borderRadius: BorderRadius.only(
          topLeft:Radius.circular(TSizes.cardRadiusLg),
            topRight:Radius.circular(TSizes.cardRadiusLg)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       Row(
         children: [
           const CircularIcon(
             height: 40,
             width: 40,
             backgroundColor: TColors.darkGrey,
             icon: Iconsax.minus, color: Colors.white,),
           const SizedBox(width: TSizes.spaceBtwItems,),
           Text('2', style: Theme.of(context).textTheme.titleSmall,),
           const SizedBox(width: TSizes.spaceBtwItems,),
           const CircularIcon(
             height: 40,
             width: 40,
             icon: Iconsax.add, color: Colors.white,backgroundColor: Colors.black,),
         ],
       ),
        ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding: const EdgeInsets.all(TSizes.md),
              side: const BorderSide(color: Colors.black)
            ),
            child: const Text('Add to cart'))
      ],
      ),
    );
  }
}
