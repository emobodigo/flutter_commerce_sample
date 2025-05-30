import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/section_heading_text.dart';
import '../../../../../common/widgets/vertical_image_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: CSize.defaultSpace),
      child: Column(
        children: [
          SectionHeadingText(
            showActionButton: false,
            title: 'Popular Categories',
            textColor: CColors.white,
          ),
          const SizedBox(
            height: CSize.spaceBtwItems,
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return VerticalImageText(
                  image: CImages.shoeIcon,
                  title: 'Shoes',
                  onTap: () {},
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
