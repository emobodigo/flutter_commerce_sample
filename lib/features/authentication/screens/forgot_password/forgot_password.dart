import 'package:ecommerce_sample/features/authentication/screens/forgot_password/reset_password.dart';
import 'package:ecommerce_sample/utils/constants/sizes.dart';
import 'package:ecommerce_sample/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(CSize.defaultSpace),
        child: Column(
          children: [
            /// Headings
            Text(
              CTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: CSize.spaceBtwItems,
            ),
            Text(
              CTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: CSize.spaceBtwSections * 2,
            ),

            /// Text Field
            TextFormField(
              decoration: InputDecoration(
                  labelText: CTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(
              height: CSize.spaceBtwSections,
            ),

            /// Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => ResetPassword()),
                child: const Text(CTexts.submit),
              ),
            )
          ],
        ),
      ),
    );
  }
}
