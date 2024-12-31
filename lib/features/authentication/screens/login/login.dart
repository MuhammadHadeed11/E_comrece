import 'package:ecommernce/common/styles/spacing_style.dart';
import 'package:ecommernce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommernce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/login_sign up/form_divider.dart';
import '../../../../common/widgets/login_sign up/social_button.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_srings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: TSpacingStyle.paaddingWithAppBarHeight,
        child: Column(
            children: [
              ///Header
              const LoginHeader(),
              ///Form
              const LoginForm(),
              ///Divider
              FormDivider(dividerText: TText.or_sign_in_with.capitalize!,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              ///Social Button
              const SocialButton()
            ]),
      ),
    ));
  }
}

