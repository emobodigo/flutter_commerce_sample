import 'package:flutter/material.dart';

import '../../../../common/widgets/primary_header_container.dart';
import '../../../../common/widgets/search_input.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar
                  HomeAppbar(),
                  const SizedBox(
                    height: CSize.spaceBtwSections,
                  ),

                  /// Searchbar
                  SearchInput(
                    text: "Search in store",
                  ),
                  const SizedBox(
                    height: CSize.spaceBtwSections,
                  ),

                  /// Categories
                  HomeCategories()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
