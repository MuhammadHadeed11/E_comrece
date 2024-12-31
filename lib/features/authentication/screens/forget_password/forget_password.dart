import 'package:ecommernce/features/authentication/screens/forget_password/reset_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_srings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ///Forget Text
                Text(TText.forget_password,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),

                ///Forget Subtitle
                Text(
                  TText.forget_password_subtitle,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: TSizes.spaceBtwSections,),
                ///Form
                Form(
                  child: Column(
                    children: [
                      ///Email TextField
                      const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.direct_right),
                            labelText: TText.email),
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections,),
                      ///Submit Button
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () =>
                                  Get.to(() => const ResetPassword()),
                              child: const Text(TText.submit))),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
