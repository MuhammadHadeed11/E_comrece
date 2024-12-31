import 'package:ecommernce/common/styles/spacing_style.dart';
import 'package:ecommernce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/text_srings.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../login/login.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paaddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                  width: THelperFunctions.screenWidth()*0.6,
                  image: const AssetImage(TImages.secondscreen)),

              ///Title
              Text(TText.your_account_successfully_created,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,),

              const SizedBox(height: TSizes.spaceBtwItems,),

              ///Subtitle
              Text(TText.subtitle_Success_screen,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,),

              const SizedBox(height: TSizes.spaceBtwSections,),

              ///Button
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=> Get.offAll(const LoginScreen()),
                  child:const Text(TText.done)),),
            ],
          ),
        ),
      ),
    );
  }
}
