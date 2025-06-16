import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';

class GradientHomeCard extends StatelessWidget {
  GradientHomeCard({super.key});
  final List<Widget> cardItems = [
    GradientHomeCardItem(textIcon: '📚', label: 'Courses', numberOf: '5'),
    GradientHomeCardItem(textIcon: '✨', label: 'Points', numberOf: '70'),
    GradientHomeCardItem(textIcon: '🏆', label: 'Rank', numberOf: '3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0.h,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            ColorsManager.darkBlue,
            ColorsManager.mainBlue,
            ColorsManager.darkBlue,
            ColorsManager.mainBlue,
            ColorsManager.darkBlue,
            ColorsManager.mainBlue,
          ],
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: cardItems,
        ),
      ),
    );
  }
}

class GradientHomeCardItem extends StatelessWidget {
  const GradientHomeCardItem({
    super.key,
    required this.textIcon,
    required this.label,
    required this.numberOf,
  });
  final String textIcon;
  final String label;
  final String numberOf;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165.h,
      width: 90.w,
      decoration: BoxDecoration(
        color: ColorsManager.backGround.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(textIcon, style: TextStyle(fontSize: 26.0.sp)),
          Text(
            label,
            style: TextStyle(
              fontSize: 15.0.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          verticalSpace(height: 10),
          Text(
            numberOf,
            style: TextStyle(
              fontSize: 30.0.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
