import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';

class WalletTextField extends StatelessWidget {
  const WalletTextField({
    super.key,
    this.height,
    this.width,
    required this.suffixIcon,
    required this.hintText,
    this.suffixIconSize,
    this.inputType,
  });
  final double? height;
  final double? width;
  final double? suffixIconSize;
  final IconData suffixIcon;
  final String hintText;
  final TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height?.h ?? 70.h,
      width: width?.w ?? 300.w,
      child: TextFormField(
        keyboardType: inputType ?? TextInputType.text,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: ColorsManager.grey),
          suffixIcon: Icon(suffixIcon, size: suffixIconSize ?? 30),
          suffixIconColor: ColorsManager.walletColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: ColorsManager.grey, width: 3.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: ColorsManager.walletColor,
              width: 3.0,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.red, width: 3.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.red, width: 3.0),
          ),
        ),
      ),
    );
  }
}
