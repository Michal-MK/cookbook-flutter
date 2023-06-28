import 'package:cookbook/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CBShimmer extends StatelessWidget {
  final double height;
  final double width;
  final double? radius;

  const CBShimmer({
    super.key,
    required this.height,
    required this.width,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      period: const Duration(milliseconds: 2000),
      gradient: LinearGradient(
        colors: [
          CBColors.Gray5Color,
          CBColors.Gray5Color,
          CBColors.Gray7Color,
          CBColors.Gray5Color,
          CBColors.Gray5Color,
        ],
        stops: const [
          0.0,
          0.40,
          0.5,
          0.60,
          1.0
        ],
      ),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: CBColors.Gray7Color,
          borderRadius: BorderRadius.circular(radius ?? height / 2),
        ),
      ),
    );
  }
}
