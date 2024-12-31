import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ///Google Icon
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(onPressed: (){}, icon: const Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: AssetImage(TImages.googleLogo))),
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        ///FaceBook Icon
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(onPressed: (){}, icon: const Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: AssetImage(TImages.facebookLogo))),
        ),
      ],
    );
  }
}

