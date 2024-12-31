import 'package:ecommernce/common/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommernce/common/widgets/icon/circular_icon.dart';
import 'package:ecommernce/common/widgets/layout/grid_layout.dart';
import 'package:ecommernce/common/widgets/products/product_cards/product_cards_vertical.dart';
import 'package:ecommernce/features/shop/screens/home/home.dart';
import 'package:ecommernce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
class Wishlist extends StatelessWidget {
  const Wishlist({super.key});
  static const List<String> images=[
    TImages.tshirt3,TImages.slippers4,TImages.acerlaptop5,TImages.nikehoesnike1,TImages.iphone14pro2,TImages.jacket5
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        title: Text("Wishlist", style: Theme.of(context).textTheme.headlineMedium,),
        actions: [CircularIcon(icon: Iconsax.add, onPressed: ()=> Get.to(HomeScreen()),
        )],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            GridLayout(itemCounts: 6, itemBuilder: (_,index)=>  ProductCardsVertical(image: images[index])
            )],
        ),),
      ),
    );
  }
}
