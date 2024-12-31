import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'curved_edges.dart';

class CurveEdgesWidgets extends StatelessWidget {
  const CurveEdgesWidgets({
    super.key, this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: CustomCurvedEdges(),
        child: child
    );
  }
}