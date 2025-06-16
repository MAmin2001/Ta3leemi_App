import 'package:flutter/material.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/text_with_opacity_background.dart';

class LeaderBoardPositionItem extends StatelessWidget {
  const LeaderBoardPositionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: ColorsManager.leaderBoardColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children: [
            TextWithOpacityBackground(
              text: '#1',
              color: ColorsManager.leaderBoardColor,
              height: 60,
              width: 45,
              textSize: 22.0,
              borderRadius: 25,
            ),
            horizontalSpace(width: 10),
            TextWithOpacityBackground(
              text: 'Mahmoud',
              color: ColorsManager.leaderBoardColor,
              height: 60,
              width: 100,
              borderRadius: 25,
            ),
            Spacer(),
            TextWithOpacityBackground(
              text: '150 points',
              color: ColorsManager.leaderBoardColor,
              height: 60,
              width: 100,
              borderRadius: 25,
            ),
          ],
        ),
      ),
    );
  }
}
