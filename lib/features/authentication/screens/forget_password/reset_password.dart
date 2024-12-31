import 'package:ecommernce/features/authentication/screens/forget_password/new_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_srings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../login/login.dart';
class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () => Get.to(()=> const LoginScreen()), icon: const Icon(CupertinoIcons.clear))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
    child: Column(
    children: [

      ///Image
      Image(image: const AssetImage(TImages.firstscreen),
    width: THelperFunctions.screenWidth()*0.6,),

      const SizedBox(height: TSizes.spaceBtwSections,),

      ///Text Title
      Text(TText.password_reset_email_sent,
        style: Theme.of(context).textTheme.headlineMedium,
        textAlign: TextAlign.center,),

      const SizedBox(height: TSizes.spaceBtwItems,),

      ///Email
      Text(TText.email_id,
        style: Theme.of(context).textTheme.labelLarge,
        textAlign: TextAlign.center,),

      const SizedBox(height: TSizes.spaceBtwItems,),

      ///Text Subtitle
      Text(TText.reset_password_subtitle,
        style: Theme.of(context).textTheme.labelMedium,
        textAlign: TextAlign.center,),

      const SizedBox(height: TSizes.spaceBtwSections,),

      ///Done Button
      SizedBox(width: double.infinity,
        child: ElevatedButton(onPressed: () => Get.to(()=>const NewPassword()),
          child: const Text(TText.done),),),

      const SizedBox(height: TSizes.spaceBtwItems,),

      ///Resend Email TextButton
      SizedBox(width: double.infinity,
        child: TextButton(onPressed: () {},
          child: const Text(TText.resend_email),),),
        ],
      ),
    )));
  }
}
