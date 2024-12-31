import 'package:flutter/cupertino.dart';

import '../../utils/constants/sizes.dart';

class TSpacingStyle{
  TSpacingStyle._();
  static const EdgeInsetsGeometry paaddingWithAppBarHeight = EdgeInsets.only(
    top: TSizes.appBarHeight,
    bottom: TSizes.defaultSpace,
    left: TSizes.defaultSpace,
    right: TSizes.defaultSpace
  );
}