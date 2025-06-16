import 'package:flutter/material.dart';
import 'package:ta3leemi_project/core/themes/assets_manager.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/core/widgets/custom_text_button.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/core/widgets/white_box_with_shadow.dart';
import 'package:ta3leemi_project/features/home/ui/widgets/course_progress_item.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/cover_image.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/custom_app_bar.dart';

class MyCoursesScreen extends StatelessWidget {
  const MyCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CustomIconAppBar(),
                verticalSpace(height: 15),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) => MyCourseBoxItem(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyCourseBoxItem extends StatelessWidget {
  const MyCourseBoxItem({super.key});

  @override
  Widget build(BuildContext context) {
    return WhiteBoxWithShadow(
      topPadding: 15,
      bottomPadding: 15,
      rightPadding: 0,
      leftPadding: 0,
      shadowColor: ColorsManager.coursesProgressColor,
      child: Column(
        children: [
          CoverImage(coverImage: AssetsManager.courseTestImage),
          verticalSpace(height: 30),
          CourseTitleAndProgress(courseColor: Colors.red),
          verticalSpace(height: 30),
          CustomTextButton(
            textColor: ColorsManager.coursesProgressColor,
            backgroundColor: ColorsManager.coursesProgressColor.withOpacity(
              0.2,
            ),
            text: 'Preview Course',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
