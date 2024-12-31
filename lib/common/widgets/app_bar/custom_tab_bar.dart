import 'package:ecommernce/utils/constants/colors.dart';
import 'package:ecommernce/utils/device/device_utility.dart';
import 'package:ecommernce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class CustomTabBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark= THelperFunctions.isDarkMode(context);
    return Material(
      color: dark?  TColors.black: TColors.white,
      child: TabBar(
        tabs: tabs,
      isScrollable: true,
      indicatorColor: TColors.primary,
      labelColor: dark? TColors.white:TColors.primary,
      unselectedLabelColor: TColors.darkerGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
