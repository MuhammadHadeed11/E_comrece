import 'package:ecommernce/common/styles/shadow.dart';
import 'package:ecommernce/features/shop/screens/product_detail/product_detail_screen.dart';
import 'package:ecommernce/utils/constants/colors.dart';
import 'package:ecommernce/utils/constants/text_srings.dart';
import 'package:ecommernce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/enums.dart';
import '../../../../utils/constants/sizes.dart';
import '../../custom_shapes/containers/circular_container.dart';
import '../../icon/circular_icon.dart';
import '../../image/rounded_images.dart';
import '../../texts/brand_text_with_verified_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';

class ProductCardsVertical extends StatelessWidget {
  const ProductCardsVertical({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    ///Main Container
    return GestureDetector(
      onTap: () => Get.to(()=>const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular((TSizes.productImageRadius)),
          color: dark? TColors.darkerGrey: TColors.white
        ),
        child: Column(
          children: [
            ///Set Container For Image
            CircularContainer(
              width: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              background: dark? TColors.dark: TColors.light,
              radius: TSizes.cardRadiusLg,
              child: Stack(
                children: [
                  ///Set Image in the Container
                  CircularContainer(
                    height: 180,
                    padding: const EdgeInsets.all(TSizes.sm),
                    background: dark? TColors.dark: TColors.light,
                    radius: TSizes.cardRadiusLg,
                    child: Stack(
                      children: [
                        ///Thumbnail Image
                         RoundedImage(imageUrl: image,applyImageRadius: true, ),
                        ///Discount Tag
                        Positioned(
                          top: 12,
                          child: CircularContainer(
                            radius: TSizes.sm,
                            background: TColors.secondary.withOpacity(0.8),
                            padding: const EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.xs),
                            child: Text('25%' , style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
                          ),
                        ),
                        ///Icons
                        const Positioned(
                            right: 0,
                            top: 0,
                            child: CircularIcon(icon: Iconsax.heart5, color: Colors.red,)),
                      ],
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems/2,),

            const Padding(padding: EdgeInsets.only(left: TSizes.sm),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                ProductTitleText(title: TText.green_nike_air_shoes,smallSize: true,),

                SizedBox(height: TSizes.spaceBtwItems/2,),

                BrandTitleWithVerifiedIcon(text: 'Nike', brandTextSize:TextSizes.medium,),

              ],
            ),
            ),

            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Price
                const Padding(
                  padding:  EdgeInsets.only(left: TSizes.sm),
                  child: ProductPriceText(price: '35.0',),
                ),
                ///Add Icon
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    decoration: const BoxDecoration(
                      color: TColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight: Radius.circular(TSizes.productImageRadius)
                      ),
                    ),
                    child: const SizedBox(
                        height:TSizes.iconLg*1.2 ,
                        width:TSizes.iconLg*1.2,
                        child: Center(
                            child: Icon(Iconsax.add, color: TColors.white,))),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}