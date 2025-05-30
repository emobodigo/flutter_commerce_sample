import 'package:flutter/material.dart';

import '../../../../../common/widgets/cart_button.dart';
import '../../../../../common/widgets/custom_appbar.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            CTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: CColors.grey),
          ),
          Text(
            CTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: CColors.white),
          ),
        ],
      ),
      actions: [
        CartButton(
          onPressed: () {},
        ),
      ],
    );
  }
}
