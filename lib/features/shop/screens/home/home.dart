import 'package:ecommernce/common/widgets/products/product_cards/product_cards_vertical.dart';
import 'package:ecommernce/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:ecommernce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommernce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommernce/utils/constants/image_strings.dart';
import 'package:ecommernce/utils/constants/sizes.dart';
import 'package:ecommernce/utils/constants/text_srings.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/texts/usable_row.dart';


class HomeScreen extends StatelessWidget {
   HomeScreen({
    super.key,
  });
final List<String> images=[
  TImages.nikehoesnike1,
  TImages.iphone14pro,
  TImages.jacket4,
  TImages.bedbrown3
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header
            const PrimaryHeaderContainer(
                child: Column(
              children: [
                ///AppBar
                HomeAppBar(),

                SizedBox(height: TSizes.spaceBtwSections,),

                ///search Bar
                SearchContainer(text: 'Search in store',),

                SizedBox(height: TSizes.spaceBtwSections,),

                Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ///Row
                        UsableRow(text: TText.popular_category, showActionButton: false,),

                        SizedBox(height: TSizes.spaceBtwSections,),

                        ///Rounded Image
                        HomeCategories(),
                        SizedBox(height: TSizes.spaceBtwSections,)
                      ],
                    )),
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [

                  const PromoSlider(banners: [TImages.banner1,TImages.banner2,TImages.banner3],),

                  ///Popular Products
                  const SizedBox(height: TSizes.spaceBtwSections,),

                  UsableRow(text: TText.popular_products, onPressed: (){},),

                  const SizedBox(height: TSizes.spaceBtwSections,),
                  GridLayout(itemCounts: 4, itemBuilder: (_, int index) =>ProductCardsVertical(image:images[index],),)

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

