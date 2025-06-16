import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';

class GradientTextButton extends StatelessWidget {
  const GradientTextButton({
    super.key,
    required this.text,
    required this.onTap,
    this.colorsList,
    this.height,
    this.width,
  });
  final String text;
  final VoidCallback onTap;
  final List<Color>? colorsList;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: height?.h ?? 75.h,
          width: width?.w ?? double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors:
                  colorsList ??
                  [ColorsManager.darkBlue, ColorsManager.mainBlue],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
