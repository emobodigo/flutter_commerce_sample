import 'package:ecommerce_sample/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CSpacingStyle {
  CSpacingStyle._();

  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
      top: CSize.appBarHeight,
      left: CSize.defaultSpace,
      bottom: CSize.defaultSpace,
      right: CSize.defaultSpace);
}
