import 'package:ecommernce/common/widgets/texts/usable_row.dart';
import 'package:ecommernce/features/shop/screens/product_detail/Widgets/add_to_card.dart';
import 'package:ecommernce/features/shop/screens/product_detail/Widgets/product_attribute.dart';
import 'package:ecommernce/features/shop/screens/product_detail/Widgets/product_meta_data.dart';
import 'package:ecommernce/utils/constants/sizes.dart';
import 'package:ecommernce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'Widgets/product_detailed_slider.dart';
import 'Widgets/rating_and_share.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const AddToCard(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProducDetailedSlider(dark: dark),
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  ///Rate and Share
                  const RatingAndSharehare(),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  ///Price
                  const ProductMetaData(),

                  ///Attribute
                  const ProductAttribute(),

                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Checkout")),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  const UsableRow(text: "Description"),
                  const SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  const ReadMoreText(
                    "This is product detailed with the read more and read less button that package is install and add in pubspec.ymal file and get dependencies also",
                    trimLines: 2,
                    trimCollapsedText: 'Read More',
                    trimExpandedText: 'Less',
                    trimMode: TrimMode.Line,
                    moreStyle:
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
                    lessStyle:
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
                  ),
                  //change
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const UsableRow(
                        text: "Reviews(199)",
                        showActionButton: false,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Iconsax.arrow_right_3,
                            size: 18,
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
