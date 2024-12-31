import 'package:ecommernce/common/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommernce/common/widgets/app_bar/custom_tab_bar.dart';
import 'package:ecommernce/common/widgets/layout/grid_layout.dart';
import 'package:ecommernce/common/widgets/products_cart/card_menu.dart';
import 'package:ecommernce/common/widgets/texts/usable_row.dart';
import 'package:ecommernce/features/shop/screens/store/widgets/categories_tab.dart';
import 'package:ecommernce/lists.dart';
import 'package:ecommernce/utils/constants/colors.dart';
import 'package:ecommernce/utils/constants/sizes.dart';
import 'package:ecommernce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/products/brand_card/brand_card.dart';
import '../../../../utils/constants/image_strings.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark= THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        ///AppBar
        appBar: CustomAppBar(
          title: Text("Store" , style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            CartCounterIcon(onPressed: (){}),
          ],
        ),
        ///Nested Scrollable View
        body: NestedScrollView(headerSliverBuilder: (_,innerBoxIsScrolled){
          return[
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: dark? TColors.black: TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
              ///List
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ///Searchbar
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  const SearchContainer(text: 'Search in store', padding: EdgeInsets.zero,),

                  const SizedBox(height: TSizes.spaceBtwSections,),

                  ///FeatureBrands
                  UsableRow(text: 'Featured Brands',onPressed: (){},),

                  const SizedBox(height: TSizes.spaceBtwItems/1.5,),
                  /// Grid Layout
                   GridLayout(mainAxisExtent: 80,itemCounts: 4, itemBuilder: (_,index){
                     final List<String> brandImages= [
                       TImages.nikeLogo,
                       TImages.adidasLogo,
                       TImages.appleLogo,
                       TImages.pumaLogo
                     ];
                     final List<String> brandText= [
                       "Nike",
                       "Adidas",
                       "Apple",
                       "Puma"
                     ];
                     final List<String> brandProduct= [
                       "300 Product",
                       "250 Product",
                       "200 Product",
                       "350 Product"
                     ];
                     return GestureDetector(
                       onTap: (){},
                       child: BrandCard(dark: dark, showBorder: false, image: brandImages[index], text: brandText[index],
                         product: brandProduct[index],),
                     );
                   }),

                ],
              ),),
              ///Tabs
              bottom: const CustomTabBar(tabs: [
                Tab(child: Text("Sport"),),
                Tab(child: Text("Furniture"),),
                Tab(child: Text("Electronics"),),
                Tab(child: Text("Cloths"),),
                Tab(child: Text("Cosmetics"),),
              ])
            )];
        },
        body: const TabBarView(children: [
          CategoriesTab(images: ListsImages.sports1, imagegrid: ListsImages.sports2,),
          CategoriesTab(images: ListsImages.furniture1,imagegrid: ListsImages.furniture2,),
          CategoriesTab(images: ListsImages.electronics1, imagegrid: ListsImages.electronics2,),
          CategoriesTab(images: ListsImages.cloths1, imagegrid: ListsImages.cloths2,),
          CategoriesTab(images: ListsImages.cosmetics1, imagegrid: ListsImages.cosmetics2,),
        ])
        ),
      ),
    );
  }
}