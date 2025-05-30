import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/success_screen.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../login/login.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSize.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: AssetImage(CImages.deliveredEmailIllustration),
                width: CHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: CSize.spaceBtwSections,
              ),

              /// Title & Subtitle
              Text(
                CTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: CSize.spaceBtwItems,
              ),
              Text(
                "djohans33@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: CSize.spaceBtwItems,
              ),
              Text(
                CTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: CSize.spaceBtwSections,
              ),

              /// Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image: CImages.staticSuccessIllustration,
                      title: CTexts.yourAccountCreatedTitle,
                      subtitle: CTexts.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(() => LoginScreen()),
                    ),
                  ),
                  child: Text(CTexts.tContinue),
                ),
              ),
              const SizedBox(
                height: CSize.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(CTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
