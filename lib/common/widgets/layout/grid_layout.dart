import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';
class GridLayout extends StatelessWidget {
  const GridLayout({
    super.key, required this.itemCounts, this.mainAxisExtent=288, required this.itemBuilder,
  });
  final int itemCounts;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCounts,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: TSizes.gridViewSpacing,
          crossAxisSpacing: TSizes.gridViewSpacing,
          mainAxisExtent: mainAxisExtent),

      itemBuilder: itemBuilder,

    );
  }
}