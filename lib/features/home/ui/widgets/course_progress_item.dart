import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/core/widgets/custom_text_button.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/date_time_text.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/text_with_opacity_background.dart';

class CourseProgressItem extends StatelessWidget {
  const CourseProgressItem({super.key, required this.courseColor});
  final Color courseColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CourseTitleAndProgress(courseColor: Colors.red),
        verticalSpace(height: 15),
        Row(
          children: [
            DateTimeText(dateTimeText: 'Last activity since : 13 hours'),
            Spacer(),
            CustomTextButton(
              textSize: 16.0,
              borderRadius: 20,
              buttonWidth: 80,
              buttonHeight: 40,
              textColor: ColorsManager.coursesProgressColor,
              backgroundColor: ColorsManager.coursesProgressColor.withOpacity(
                0.2,
              ),
              text: 'Preview',
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class CourseTitleAndProgress extends StatelessWidget {
  const CourseTitleAndProgress({super.key, required this.courseColor});
  final Color courseColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Determinants and matrices',
              style: TextStyle(
                color: ColorsManager.darkGrey,
                fontSize: 18.0.sp,
                fontWeight: FontWeight.w500,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            TextWithOpacityBackground(
              text: '17%',
              color: courseColor,
              height: 40,
              width: 50,
            ),
          ],
        ),
        verticalSpace(height: 20),
        LinearProgressIndicator(
          value: 0.3,
          backgroundColor: ColorsManager.lightGrey,
          color: courseColor,
          minHeight: 18.h,
          borderRadius: BorderRadius.circular(10),
        ),
      ],
    );
  }
}
