import 'package:ecommernce/features/authentication/controllers/controllers.onboarding/onboarding_controller.dart';
import 'package:ecommernce/utils/constants/colors.dart';
import 'package:ecommernce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        right: TSizes.defaultSpace,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
              backgroundColor:dark? TColors.primary: Colors.black
            ),
            onPressed: ()=> OnBoardingController.instance.nextPage(), child: const Icon(Iconsax.arrow_right_3)));
  }
}