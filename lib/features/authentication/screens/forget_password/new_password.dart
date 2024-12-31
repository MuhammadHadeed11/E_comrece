import 'package:ecommernce/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_srings.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ///AppBar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () => Get.to(()=> const LoginScreen()), icon:  const Icon(CupertinoIcons.clear))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ///Title
            Text(TText.create_new_password,
              style: Theme.of(context).textTheme.headlineMedium,),

            const SizedBox(height: TSizes.spaceBtwItems,),

            ///Subtitle
            Text(TText.create_new_password_subtitle,
              style: Theme.of(context).textTheme.bodySmall,),
            const SizedBox(height: TSizes.spaceBtwSections,),
            Form(child:
            Column(
              children: [
                ///New Password TextField
                const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.password_check),
                      labelText: TText.new_password,
                      suffixIcon: Icon(Iconsax.eye_slash)),
                ),

                const SizedBox(height: TSizes.spaceBtwSections,),

                ///Confirmed Password TextField
                const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.password_check),
                      labelText: TText.confirm_password,
                      suffixIcon: Icon(Iconsax.eye_slash)),
                ),

                const SizedBox(height: TSizes.spaceBtwSections,),
                
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: ()=>Get.offAll(const LoginScreen()),
                      child: const Text(TText.done)),
                )
              ],
            ),)
          ],
        ),),
      ),
    );
  }
}
