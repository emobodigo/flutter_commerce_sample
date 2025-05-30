import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/form_divider.dart';
import '../../../../../common/widgets/social_buttons.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../verify_email.dart';
import 'term_condition_checkbox.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: CTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(
                width: CSize.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: CTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: CSize.spaceBtwInputFields,
          ),

          /// Username
          TextFormField(
            decoration: InputDecoration(
              labelText: CTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          SizedBox(
            height: CSize.spaceBtwInputFields,
          ),

          /// Email
          TextFormField(
            decoration: InputDecoration(
              labelText: CTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(
            height: CSize.spaceBtwInputFields,
          ),

          /// Phone
          TextFormField(
            decoration: InputDecoration(
              labelText: CTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
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
            height: CSize.spaceBtwInputFields,
          ),

          /// Term & Condition
          TermConditionCheckbox(),
          SizedBox(
            height: CSize.spaceBtwSections,
          ),

          /// Signup Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => VerifyEmailScreen()),
              child: const Text(CTexts.createAccount),
            ),
          ),
          SizedBox(
            height: CSize.spaceBtwSections,
          ),

          /// Divider
          CFormDivider(dividerText: CTexts.orSignUpWith.capitalize!),
          SizedBox(
            height: CSize.spaceBtwSections,
          ),

          /// Social Buttons
          SocialButtons()
        ],
      ),
    );
  }
}
