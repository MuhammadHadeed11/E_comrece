import 'package:ecommernce/common/widgets/image/rounded_images.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/app_bar/custom_app_bar.dart';
import '../../../../../common/widgets/custom_shapes/curve_edges/curve_edges_widgets.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
class ProducDetailedSlider extends StatelessWidget {
  const ProducDetailedSlider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return CurveEdgesWidgets(
      child: Container(
        color: dark? TColors.darkerGrey:TColors.light,
        child: Stack(
          children: [
            const CustomAppBar(
              showBackArrow: true,
              actions: [
                Icon(Iconsax.heart5, color: Colors.red,)
              ],
            ),
            const SizedBox(
              height: 400,
              child: Padding(padding: EdgeInsets.all(TSizes.productImageRadius*2),
                child: Center(child: Image(image: AssetImage(TImages.nikehoesnike1))),
              ),
            ),
            Positioned(
              left: TSizes.defaultSpace,
              bottom: 30,
              right: 0,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    separatorBuilder: (_,__)=> const SizedBox(width: TSizes.spaceBtwItems,), itemCount:4,itemBuilder: (_,index)=>
                    RoundedImage(
                        width: 80,
                        backgroundColor: dark? TColors.darkerGrey:TColors.light,
                        padding: const EdgeInsets.all(TSizes.sm),
                        border: Border.all(color: TColors.primary),
                      imageUrl: TImages.nikeshoesnikeBR2,)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
