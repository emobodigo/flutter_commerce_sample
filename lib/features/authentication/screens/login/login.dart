import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/form_divider.dart';
import '../../../../common/widgets/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

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
