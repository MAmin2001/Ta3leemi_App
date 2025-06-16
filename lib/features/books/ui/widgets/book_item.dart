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

class BookItem extends StatelessWidget {
  const BookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return WhiteBoxWithShadow(
      leftPadding: 0,
      rightPadding: 0,
      topPadding: 10,
      bottomPadding: 15,
      shadowColor: ColorsManager.booksColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CoverImage(coverImage: AssetsManager.courseTestImage),
          verticalSpace(height: 20),
          ItemTitleWithDescription(
            itemTitle: 'Final Review - Pure Mathematics',
            itemDescription:
                'Full explanation + exercises + exercise solutions,Full explanation + exercises + exercise ',
          ),
          verticalSpace(height: 10),
          DateTimeText(dateTimeText: '13 May, 2025'),
          verticalSpace(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWithOpacityBackground(
                text: 'Algebra',
                color: ColorsManager.booksColor,
                height: 50,
                width: 80,
              ),
              TextWithOpacityBackground(
                text: '200.00 EGP',
                color: ColorsManager.booksColor,
                height: 50,
                width: 110,
              ),
            ],
          ),
          verticalSpace(height: 20),
          CustomTextButton(
            text: 'Buy Book',
            onPressed: () {},
            textColor: ColorsManager.booksColor,
            backgroundColor: ColorsManager.booksColor.withOpacity(0.2),
          ),
        ],
      ),
    );
  }
}
