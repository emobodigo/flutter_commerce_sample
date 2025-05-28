import 'package:ecommerce_sample/common/styles/spacing_styles.dart';
import 'package:ecommerce_sample/common/widgets/form_divider.dart';
import 'package:ecommerce_sample/common/widgets/social_buttons.dart';
import 'package:ecommerce_sample/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce_sample/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce_sample/utils/constants/sizes.dart';
import 'package:ecommerce_sample/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              CLoginHeader(),

              /// Form
              LoginForm(),

              /// Divider
              CFormDivider(
                dividerText: CTexts.orSignInWith.capitalize!,
              ),
              SizedBox(
                height: CSize.spaceBtwSections,
              ),

              /// Footer
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
