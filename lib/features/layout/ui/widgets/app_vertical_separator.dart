import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';

class AppVerticalSeparator extends StatelessWidget {
  const AppVerticalSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Container(
        height: 3.h,
        decoration: BoxDecoration(color: ColorsManager.lightGrey),
      ),
    );
  }
}
