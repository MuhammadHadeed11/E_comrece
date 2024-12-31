import 'package:ecommernce/features/authentication/screens/sign_up/widgets/email_varified.dart';
import 'package:ecommernce/features/authentication/screens/sign_up/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_srings.dart';
class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child:
    Column(
      children: [
        const Row(
          children: [
            ///First Name/Last Name
            Expanded(
              child: TextField(
                expands: false,
                decoration: InputDecoration(
                  suffixIcon: Icon(Iconsax.user),
                  labelText: TText.first_name,
                ),),
            ),
            SizedBox(width: TSizes.spaceBtwInputFields,),
            Expanded(
              child: TextField(
                expands: false,
                decoration: InputDecoration(
                  suffixIcon: Icon(Iconsax.user),
                  labelText: TText.last_name,
                ),),
            ),
          ],),

        const SizedBox(height: TSizes.spaceBtwInputFields,),

        ///User Name
        const TextField(
          expands: false,
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.user_edit),
            labelText: TText.user_name,
          ),),

        const SizedBox(height: TSizes.spaceBtwInputFields,),

        ///Email
        const TextField(
          expands: false,
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct),
            labelText: TText.email,
          ),),

        const SizedBox(height: TSizes.spaceBtwInputFields,),

        ///Phone Number
        const TextField(
          expands: false,
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.call),
            labelText: TText.phone_number,
          ),),

        const SizedBox(height: TSizes.spaceBtwInputFields,),

        ///Password
        const TextField(
            expands: false,
            decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TText.password,
                suffixIcon: Icon(Iconsax.eye_slash))
        ),

        const SizedBox(height: TSizes.spaceBtwSections,),

        ///Terms and Condition
        const TermsAndCondition(),

        const SizedBox(height: TSizes.spaceBtwSections,),

        ///Create Account Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(onPressed: () => Get.to(()=> const EmailVarified()), child: const Text(TText.create_account)),
        ),
      ],
    ),
    );
  }
}


