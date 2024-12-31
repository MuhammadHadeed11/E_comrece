import 'package:ecommernce/features/authentication/screens/sign_up/widgets/succes_screen.dart';
import 'package:ecommernce/features/authentication/screens/login/login.dart';
import 'package:ecommernce/utils/constants/image_strings.dart';
import 'package:ecommernce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_srings.dart';

class EmailVarified extends StatelessWidget {
  const EmailVarified({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        actions: [
          IconButton(onPressed: () => Get.to(()=>const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(
                  width: THelperFunctions.screenWidth()*0.6,
                  //height: THelperFunctions.screenHeight()*0.3,
                  image: const AssetImage(TImages.firstscreen)),

              const SizedBox(height: TSizes.spaceBtwSections,),

              ///Title
              Text(TText.verify_your_email_address,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,),

              const SizedBox(height: TSizes.spaceBtwItems,),

              ///Email ID
              Text(TText.email_id,style:
              Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,),

              const SizedBox(height: TSizes.spaceBtwItems,),

              ///Subtitle
              Text(TText.subtitle_verify_screen,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,),

              const SizedBox(height: TSizes.spaceBtwSections,),

              ///Continue Button
              SizedBox(width: double.infinity, child: ElevatedButton(
                  onPressed: () => Get.to(()=>const SuccessScreen()),
                  child:const Text(TText.continues)),),

              const SizedBox(height: TSizes.spaceBtwItems,),

              ///Resend Email Text Button
              SizedBox(width: double.infinity,
                child: TextButton(onPressed: () {},
                    child:const Text(TText.resend_email)),),
            ],
          ),
        ),
      ),
    );
  }
}