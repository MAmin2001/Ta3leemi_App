import 'package:flutter/material.dart';

class WhiteBoxWithShadow extends StatelessWidget {
  const WhiteBoxWithShadow({
    super.key,
    required this.shadowColor,
    required this.child,
    this.leftPadding,
    this.rightPadding,
    this.topPadding,
    this.bottomPadding,
    this.insideVerticalPadding,
    this.insideHorizontalPadding,
    this.borderRadius,
  });
  final Widget child;
  final Color shadowColor;
  final double? leftPadding;
  final double? rightPadding;
  final double? topPadding;
  final double? bottomPadding;
  final double? insideVerticalPadding;
  final double? insideHorizontalPadding;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: leftPadding ?? 8.0,
        right: rightPadding ?? 8.0,
        top: topPadding ?? 8.0,
        bottom: bottomPadding ?? 8.0,
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              offset: Offset(5, 5),
              blurRadius: 1.0,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(borderRadius ?? 16),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: insideHorizontalPadding ?? 8.0,
            vertical: insideVerticalPadding ?? 24.0,
          ),
          child: child,
        ),
      ),
    );
  }
}
