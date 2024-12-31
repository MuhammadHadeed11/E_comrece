import 'package:ecommernce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecommernce/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:ecommernce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommernce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommernce/utils/constants/image_strings.dart';
import 'package:ecommernce/utils/constants/text_srings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/controllers.onboarding/onboarding_controller.dart';

/// Create OnBoarding Class that call in the app.dart file
class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {

    ///Create a Controller variable that control the action of Skip_Button, Next_Button and Navigation_Dots
    ///Create an OnBoardingController() Class that extract with GetxController

    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages (3) pages
          PageView(
            controller: controller.pageController,
            ///Updates the Page
            onPageChanged: controller.updatePageIndicator,
            children: const [
              ///OoBoarding Pages
              ///1
              OnBoardingPage(
                image: TImages.onBordingImage1,
                title: TText.onBordingTitle1,
                subTitle: TText.onBordingSubTitle1,),
              ///2
              OnBoardingPage(
                image: TImages.onBordingImage2,
                title: TText.onBordingTitle2,
                subTitle: TText.onBordingSubTitle2,),
              ///3
              OnBoardingPage(
                image: TImages.onBordingImage3,
                title: TText.onBordingTitle3,
                subTitle: TText.onBordingSubTitle3,)
            ],
          ),
          /// Skip Button
          const OnBoardingSkip(),
          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),
          /// Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}







