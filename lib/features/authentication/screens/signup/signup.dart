import 'package:ecommerce_sample/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce_sample/utils/constants/sizes.dart';
import 'package:ecommerce_sample/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                CTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: CSize.spaceBtwSections,
              ),

              /// Form
              SignupForm()
            ],
          ),
        ),
      ),
    );
  }
}
