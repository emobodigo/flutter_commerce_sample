import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../controllers/onboarding/onboarding_controller.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal scrollable Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: CImages.onBoardingImage1,
                title: CTexts.onBoardingTitle1,
                subtitle: CTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: CImages.onBoardingImage2,
                title: CTexts.onBoardingTitle2,
                subtitle: CTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: CImages.onBoardingImage3,
                title: CTexts.onBoardingTitle3,
                subtitle: CTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          OnBoardingDotNavigation(),

          /// Circular Button
          OnBoardingNextButton()
        ],
      ),
    );
  }
}
