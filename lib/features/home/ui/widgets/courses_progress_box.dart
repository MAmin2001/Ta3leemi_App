import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/helpers/extensions.dart';
import 'package:ta3leemi_project/core/routing/routes.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/features/home/ui/widgets/course_progress_item.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/app_vertical_separator.dart';
import 'package:ta3leemi_project/core/widgets/custom_text_button.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/core/widgets/white_box_with_shadow.dart';

class CoursesProgressBox extends StatelessWidget {
  const CoursesProgressBox({super.key});

  @override
  Widget build(BuildContext context) {
    return WhiteBoxWithShadow(
      leftPadding: 0,
      rightPadding: 0,
      topPadding: 15,
      bottomPadding: 20,
      shadowColor: ColorsManager.coursesProgressColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '📚  Your Progress',
            style: TextStyle(
              fontSize: 20.0.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          verticalSpace(height: 15),
          SizedBox(
            height: 350.h,
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              separatorBuilder: (context, index) => AppVerticalSeparator(),
              itemBuilder:
                  (context, index) =>
                      CourseProgressItem(courseColor: Colors.red),
              itemCount: 5,
            ),
          ),
          verticalSpace(height: 20),
          CustomTextButton(
            text: 'Show all',
            backgroundColor: ColorsManager.coursesProgressColor.withOpacity(
              0.2,
            ),
            textColor: ColorsManager.coursesProgressColor,

            onPressed: () {
              context.pushNamed(Routes.myCoursesRoute);
            },
          ),
        ],
      ),
    );
  }
}
