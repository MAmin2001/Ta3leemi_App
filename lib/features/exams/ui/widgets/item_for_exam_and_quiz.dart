import 'package:flutter/material.dart';
import 'package:ta3leemi_project/core/widgets/custom_text_button.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/core/widgets/white_box_with_shadow.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/date_time_text.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/item_title_with_description.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/text_with_opacity_background.dart';

class ItemForExamAndQuiz extends StatelessWidget {
  const ItemForExamAndQuiz({
    super.key,
    required this.title,
    required this.description,
    required this.deadline,
    required this.time,
    required this.difficulty,
    required this.onPressed,
    required this.difficultyColor,
    required this.buttonText,
  });
  final String title;
  final String description;
  final String deadline;
  final String time;
  final String difficulty;
  final String buttonText;
  final Function onPressed;
  final Color difficultyColor;
  @override
  Widget build(BuildContext context) {
    return WhiteBoxWithShadow(
      topPadding: 15,
      bottomPadding: 15,
      rightPadding: 0,
      leftPadding: 0,
      shadowColor: difficultyColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ItemTitleWithDescription(
            itemTitle: title,
            itemDescription: description,
          ),
          verticalSpace(height: 10),
          DateTimeText(dateTimeText: 'ends in : $deadline'),
          verticalSpace(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWithOpacityBackground(
                text: time,
                color: difficultyColor,
                height: 50,
                width: 110,
              ),
              TextWithOpacityBackground(
                text: difficulty,
                color: difficultyColor,
                height: 50,
                width: 90,
              ),
            ],
          ),
          verticalSpace(height: 20),
          CustomTextButton(
            text: buttonText,
            onPressed: () {
              // open webview for exam
              onPressed;
            },
            textColor: difficultyColor,
            backgroundColor: difficultyColor.withOpacity(0.2),
          ),
        ],
      ),
    );
  }
}
