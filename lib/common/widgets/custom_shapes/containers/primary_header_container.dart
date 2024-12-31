import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curve_edges/curve_edges_widgets.dart';
import 'circular_container.dart';
class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    ///Curve From Bottom
    return CurveEdgesWidgets(
      ///Blue Container
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            ///Right Side First Circular Container
            Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                  width: 400,
                  height: 400,
                  radius: 400,
                  background: TColors.textWhite.withOpacity(0.1),)),
            ///Right Side Second Circular Container
            Positioned(
                top: 100,
                right: -300,
                child: CircularContainer(
                  width: 400,
                  height: 400,
                  radius: 400,
                  background: TColors.textWhite.withOpacity(0.1),)),
            child,
          ],
        ),
      ),
    );
  }
}
