import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextWithOpacityBackground extends StatelessWidget {
  const TextWithOpacityBackground({
    super.key,
    required this.text,
    required this.color,
    required this.height,
    required this.width,
    this.borderRadius,
    this.textSize,
  });
  final String text;
  final Color color;
  final double height;
  final double width;
  final double? borderRadius;
  final double? textSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(borderRadius ?? 20.0),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: textSize?.sp ?? 18.0.sp,
            fontWeight: FontWeight.w500,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
