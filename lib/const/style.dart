// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

BorderRadius RADIUS8 = BorderRadius.circular(8.0);
BorderRadius RADIUS4 = BorderRadius.circular(4.0);

BorderRadius TRADIUS8 = const BorderRadius.only(
  topLeft: Radius.circular(8.0),
  topRight: Radius.circular(8.0),
);

BorderRadius TRADIUS4 = const BorderRadius.only(
  topLeft: Radius.circular(4.0),
  topRight: Radius.circular(4.0),
);

class FastScrollPhysics extends AlwaysScrollableScrollPhysics {
  const FastScrollPhysics({ScrollPhysics? parent}) : super(parent: parent);

  @override
  double get maxFlingVelocity => double.maxFinite;

  @override
  SpringDescription get spring => SpringDescription.withDampingRatio(
        mass: 0.05,
        stiffness: 200.0,
        ratio: 1.0,
      );

  @override
  FastScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return FastScrollPhysics(parent: buildParent(ancestor));
  }
}
