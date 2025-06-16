import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget verticalSpace({required double height}) {
  return SizedBox(height: height.h);
}

Widget horizontalSpace({required double width}) {
  return SizedBox(width: width.w);
}
