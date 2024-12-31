import 'package:flutter/material.dart';
import '../../../../../common/widgets/image_text_widget/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';
class HomeCategories extends StatelessWidget {
   const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> images= [
      TImages.clothIcon,
      TImages.shoeIcon,
      TImages.cosmeticsIcon,
      TImages.animalIcon,
      TImages.electronicsIcon,
      TImages.furnitureIcon
    ];
    final List<String> ImagesText=[
      "Cloths",
      "Shoes",
      "Cosmetics",
      'Animal',
      'Electronics',
      "Furniture"
    ];
    return SizedBox(
      height: 90,
      child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (_, index){
            return VerticalImageText(image: images[index], title: ImagesText[index], onTap: (){},);
          }),
    );
  }
}