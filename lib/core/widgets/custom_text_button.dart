import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.borderRadius,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonWidth,
    this.buttonHeight,
    this.textSize,
    this.textColor,
  });
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final double? borderRadius;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final double? textSize;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 20),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(
          backgroundColor ?? Colors.white,
        ),
        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 0.w,
            vertical: verticalPadding?.h ?? 0.h,
          ),
        ),
        fixedSize: WidgetStateProperty.all(
          Size(buttonWidth?.w ?? double.maxFinite, buttonHeight ?? 60.h),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: textSize?.sp ?? 18.sp,
          color: textColor ?? ColorsManager.mainBlue,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
