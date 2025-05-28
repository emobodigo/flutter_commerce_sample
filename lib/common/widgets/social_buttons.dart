import 'package:ecommerce_sample/utils/constants/colors.dart';
import 'package:ecommerce_sample/utils/constants/image_strings.dart';
import 'package:ecommerce_sample/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: CColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: CSize.iconMd,
              height: CSize.iconMd,
              image: AssetImage(CImages.google),
            ),
          ),
        ),
        SizedBox(
          width: CSize.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: CColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: CSize.iconMd,
              height: CSize.iconMd,
              image: AssetImage(CImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
