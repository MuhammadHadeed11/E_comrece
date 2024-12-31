import 'package:ecommernce/common/widgets/login_sign%20up/form_divider.dart';
import 'package:ecommernce/common/widgets/login_sign%20up/social_button.dart';
import 'package:ecommernce/features/authentication/screens/sign_up/widgets/sign_up_form.dart';
import 'package:ecommernce/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/text_srings.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: ()=>Get.back(), icon: const Icon(CupertinoIcons.clear))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Title
              Text(TText.signupTitle,
              style: Theme.of(context).textTheme.headlineMedium,),

              const SizedBox(height: TSizes.spaceBtwSections,),

              ///Form
              const SignUpForm(),

              const SizedBox(height: TSizes.spaceBtwSections,),

              ///Divider
              const FormDivider(dividerText: TText.or_sign_up_with),

              const SizedBox(height: TSizes.spaceBtwSections,),

              ///Social Button
              const SocialButton()
            ],),
        ),
      ),);
  }
}
