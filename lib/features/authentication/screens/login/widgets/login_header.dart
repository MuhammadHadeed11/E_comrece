import 'package:flutter/material.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_srings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///Image
      Image(height: 150,
          image: AssetImage(dark ? TImages.lightAppLogo : TImages.dartAppLogo)),
      ///Title Text
      Text(TText.loginTitle,
        style: Theme.of(context).textTheme.headlineMedium,),
      const SizedBox(height: TSizes.sm,),
      ///Subtitle Text
      Text(TText.loginSubTitle,
        style: Theme.of(context).textTheme.bodyMedium,),
    ]);
  }
}
