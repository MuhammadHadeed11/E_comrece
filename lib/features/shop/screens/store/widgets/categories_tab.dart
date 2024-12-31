import 'package:ecommernce/common/widgets/layout/grid_layout.dart';
import 'package:ecommernce/common/widgets/products/product_cards/product_cards_vertical.dart';
import 'package:ecommernce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../common/widgets/brands/brand_showcase.dart';
import '../../../../../common/widgets/texts/usable_row.dart';
import '../../../../../utils/constants/sizes.dart';

class CategoriesTab extends StatelessWidget {
   const CategoriesTab({super.key, required this.images, required this.imagegrid});
   final List<String> imagegrid;
final List<String> images;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),

      children: [Padding
        (padding: const EdgeInsets.all(TSizes.defaultSpace),
        child:Column(
          children: [
            TBrandShowcase(dark: dark, images: images,),
            UsableRow(text: 'You might like',onPressed: (){},),
            const SizedBox(height: TSizes.spaceBtwItems,),
            GridLayout(itemCounts: 4, itemBuilder: (_,index)=> ProductCardsVertical(image: imagegrid[index],))
          ],
        ),
      ),]
    );
  }
}
