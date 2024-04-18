import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storeapp/features/authentication/controllers/onboarding_controller.dart';
import 'package:storeapp/features/authentication/screens/onboarding/widgets/onboarding_do_navigation.dart';
import 'package:storeapp/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:storeapp/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:storeapp/features/authentication/screens/onboarding/widgets/onboardingnextbutton.dart';
import 'package:storeapp/utils/constants/image_strings.dart';
import 'package:storeapp/utils/constants/text_strings.dart';





class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingSubTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingSubTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingSubTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OneBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton()
          
        ],
      ),
    );
  }
}



