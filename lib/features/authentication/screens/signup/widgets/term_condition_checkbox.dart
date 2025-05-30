import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TermConditionCheckbox extends StatelessWidget {
  const TermConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(
          width: CSize.spaceBtwItems,
        ),
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: '${CTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
              text: '${CTexts.privacyPolicy} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? CColors.white : CColors.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? CColors.white : CColors.primaryColor),
            ),
            TextSpan(
                text: '${CTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
              text: CTexts.termsOfUse,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? CColors.white : CColors.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? CColors.white : CColors.primaryColor),
            ),
          ]),
        ),
      ],
    );
  }
}
