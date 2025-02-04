import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key, required this.text, this.icon=Iconsax.search_normal, this.showBackGround= true, this.showBorder = true, this.padding=const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackGround, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: padding,
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
              color: showBackGround? dark?
              TColors.dark:TColors.light:
              Colors.transparent,
              border: showBorder? Border.all(color: TColors.grey):null,
              borderRadius: BorderRadius.circular(TSizes.cardRadiusLg)
          ),
          child: Row(
            children: [
              Icon(icon, color: TColors.darkerGrey,),
              const SizedBox(width: TSizes.spaceBtwItems,),
              Text(text, style: Theme.of(context).textTheme.bodySmall,)
            ],
          ),
        ),
      ),
    );
  }
}