import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';

class TextFormFieldWithTitle extends StatelessWidget {
  const TextFormFieldWithTitle({
    super.key,
    required this.title,
    required this.hintText,
    required this.suffixIcon,
    this.inputType,
    this.isObscureText,
    this.titleColor,
    this.suffixColor,
    required this.validator,
    this.controller,
  });
  final TextEditingController? controller;
  final bool? isObscureText;
  final Color? titleColor;
  final Color? suffixColor;
  final String title;
  final String hintText;
  final Widget suffixIcon;
  final TextInputType? inputType;
  final Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: titleColor ?? ColorsManager.darkGrey,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        verticalSpace(height: 8.h),
        TextFormField(
          controller: controller,
          obscureText: isObscureText ?? false,
          keyboardType: inputType ?? TextInputType.visiblePassword,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: ColorsManager.grey),
            suffixIcon: suffixIcon,
            suffixIconColor: suffixColor ?? ColorsManager.darkGrey,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: ColorsManager.mainBlue, width: 3.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: ColorsManager.lightBlue,
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
          validator: (value) {
            return validator(value);
          },
        ),
      ],
    );
  }
}
