import 'package:ecommerce_sample/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/device/device_utility.dart';

class SearchInput extends StatelessWidget {
  const SearchInput(
      {super.key,
      required this.text,
      this.icon = Iconsax.search_normal,
      this.showBackground = true,
      this.showBorder = true});

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CSize.defaultSpace),
      child: Container(
        width: CDeviceUtils.getScreenWidth(context),
        padding: EdgeInsets.all(CSize.md),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
                  ? CColors.dark
                  : CColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(CSize.cardRadiusLg),
          border: showBorder ? Border.all(color: CColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: CColors.darkerGrey,
            ),
            const SizedBox(
              width: CSize.spaceBtwItems,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: text,
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                  border: InputBorder.none,
                  isCollapsed: true,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
