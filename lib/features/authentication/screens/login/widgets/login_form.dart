import 'package:ecommerce_sample/features/authentication/screens/forgot_password/forgot_password.dart';
import 'package:ecommerce_sample/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce_sample/home_menu.dart';
import 'package:ecommerce_sample/utils/constants/sizes.dart';
import 'package:ecommerce_sample/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: CSize.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: CTexts.email),
            ),
            SizedBox(
              height: CSize.spaceBtwInputFields,
            ),

            /// Password
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: CTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            SizedBox(
              height: CSize.spaceBtwInputFields / 2,
            ),

            /// Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember me
                Row(
                  children: [
                    SizedBox(
                        width: 24,
                        height: 24,
                        child: Checkbox(value: true, onChanged: (value) {})),
                    Text(CTexts.rememberMe),
                  ],
                ),

                /// Forget Password
                TextButton(
                  onPressed: () => Get.to(() => ForgotPassword()),
                  child: Text(CTexts.forgetPassword),
                )
              ],
            ),
            SizedBox(
              height: CSize.spaceBtwSections,
            ),

            /// Sign-in Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => HomeMenu()),
                child: Text(CTexts.signIn),
              ),
            ),
            SizedBox(
              height: CSize.spaceBtwItems,
            ),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(SignupScreen()),
                child: Text(CTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
