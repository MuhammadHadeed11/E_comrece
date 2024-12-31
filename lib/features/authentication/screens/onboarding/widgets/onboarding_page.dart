import 'package:flutter/material.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';


class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subTitle,
  });

  ///Things Used in OnBoarding Screen
  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          ///Image
          Image(
              width: THelperFunctions.screenWidth()*0.8,
              height: THelperFunctions.screenHeight()*0.6,
              image: AssetImage(image)),
          ///Title
          Text(title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.spaceBtwItems,),
          ///SubTitle
          Text(subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}