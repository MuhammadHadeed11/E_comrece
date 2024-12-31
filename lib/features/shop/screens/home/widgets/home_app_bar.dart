import 'package:flutter/material.dart';
import '../../../../../common/widgets/app_bar/custom_app_bar.dart';
import '../../../../../common/widgets/products_cart/card_menu.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_srings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///First Text
          Text(TText.homeAppBarTitle,
            style:  Theme.of(context).textTheme.labelMedium!.
          apply(color: TColors.grey),),

          ///Second Text
          Text(TText.homeAppBarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!.
            apply(color: TColors.white),)
        ],
      ),
      actions: [
        ///Right Side Icon
        CartCounterIcon(
          iconColor: TColors.white, onPressed: () {  },
        )
      ],
    );
  }
}