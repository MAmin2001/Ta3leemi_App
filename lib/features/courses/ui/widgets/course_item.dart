import 'package:flutter/material.dart';
import 'package:ta3leemi_project/core/themes/assets_manager.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/core/widgets/custom_text_button.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/core/widgets/white_box_with_shadow.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/cover_image.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/date_time_text.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/item_title_with_description.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/text_with_opacity_background.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return WhiteBoxWithShadow(
      leftPadding: 0,
      rightPadding: 0,
      topPadding: 20,
      bottomPadding: 10,
      shadowColor: ColorsManager.coursesColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CoverImage(coverImage: AssetsManager.courseTestImage),
          verticalSpace(height: 20),
          ItemTitleWithDescription(
            itemTitle: 'Determinants and matrices',
            itemDescription:
                'Final revision on Determinants and matrices Final revision on Determinants and matrices',
          ),
          verticalSpace(height: 5),
          Row(
            children: [
              DateTimeText(dateTimeText: '13 May, 2025'),
              Spacer(),
              TextWithOpacityBackground(
                text: '50.00 EGP',
                color: ColorsManager.coursesColor,
                height: 45,
                width: 100,
              ),
            ],
          ),
          verticalSpace(height: 20.0),

          CustomTextButton(
            text: 'Buy Course',
            backgroundColor: ColorsManager.coursesColor.withOpacity(0.2),
            textColor: ColorsManager.coursesColor,

            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
