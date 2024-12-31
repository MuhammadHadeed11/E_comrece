import 'package:ecommernce/features/authentication/screens/forget_password/forget_password.dart';
import 'package:ecommernce/features/authentication/screens/sign_up/sign_up.dart';
import 'package:ecommernce/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_srings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
          child: Column(
            children: [
              ///Email TextField
              const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: TText.email),
              ),

              const SizedBox(height: TSizes.spaceBtwInputFields,),
              ///Password TextField
              const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.password_check),
                    labelText: TText.password,
                    suffixIcon: Icon(Iconsax.eye_slash)),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields / 2,),
              ///CheckBox And TextButton
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///CheckBox and Text
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (Value) {}),
                      const Text(TText.remember_me),
                    ],),
                  ///Forget Button
                  TextButton(
                      onPressed: () => Get.to(()=> const ForgetPassword()),
                      child: const Text(TText.forget_password))
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwSections,),
              ///Sign In Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(()=> const NavigationMenu()), child: const Text(TText.sign_in))),

              const SizedBox(height: TSizes.spaceBtwItems,),
              ///Create Account Button
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () => Get.to(() => const SignUp()),
                      child: const Text(TText.create_account))),
            ],
          ),
        ));
  }
}


