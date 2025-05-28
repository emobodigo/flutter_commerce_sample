import 'package:ecommerce_sample/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerce_sample/utils/constants/colors.dart';
import 'package:ecommerce_sample/utils/constants/sizes.dart';
import 'package:ecommerce_sample/utils/device/device_utility.dart';
import 'package:ecommerce_sample/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Positioned(
        right: CSize.defaultSpace,
        bottom: CDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: dark ? CColors.primaryColor : Colors.black),
            onPressed: () => OnBoardingController.instance.nextPage(),
            child: Icon(
              Iconsax.arrow_right_3,
              color: CColors.white,
            )));
  }
}
