import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/helpers/extensions.dart';
import 'package:ta3leemi_project/core/routing/routes.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/core/widgets/custom_text_button.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/core/widgets/white_box_with_shadow.dart';

class HomeLeaderboardBox extends StatelessWidget {
  const HomeLeaderboardBox({super.key});

  @override
  Widget build(BuildContext context) {
    return WhiteBoxWithShadow(
      leftPadding: 0,
      rightPadding: 0,
      topPadding: 15,
      bottomPadding: 15,
      shadowColor: ColorsManager.leaderBoardColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '🏆  Leaderboard',
            style: TextStyle(
              fontSize: 20.0.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          verticalSpace(height: 15.0),
          HomeLeaderboardPositionItem(
            positionIcon: '🥇',
            name: 'Mahmoud',
            points: '130',
            positionColor: ColorsManager.goldColor,
          ),
          HomeLeaderboardPositionItem(
            positionIcon: '🥈',
            name: 'Mohamed',
            points: '90',
            positionColor: ColorsManager.silverColor,
          ),
          HomeLeaderboardPositionItem(
            positionIcon: '🥉',
            name: 'Ahmed',
            points: '50',
            positionColor: ColorsManager.bronzeColor,
          ),
          verticalSpace(height: 15.0),
          CustomTextButton(
            text: 'Show all',
            backgroundColor: ColorsManager.leaderBoardColor.withOpacity(0.2),
            textColor: ColorsManager.leaderBoardColor,

            onPressed: () {
              context.pushNamed(Routes.leaderboardRoute);
            },
          ),
        ],
      ),
    );
  }
}

class HomeLeaderboardPositionItem extends StatelessWidget {
  const HomeLeaderboardPositionItem({
    super.key,
    required this.positionIcon,
    required this.name,
    required this.points,
    required this.positionColor,
  });

  final Color positionColor;
  final String positionIcon;
  final String name;
  final String points;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 80.h,
        decoration: BoxDecoration(
          color: positionColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Text(
                positionIcon,
                style: TextStyle(color: positionColor, fontSize: 30.sp),
              ),

              horizontalSpace(width: 10),
              Text(
                name,
                style: TextStyle(
                  color: positionColor,
                  fontSize: 20.0.sp,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Spacer(),
              Text(
                '$points points',
                style: TextStyle(
                  color: positionColor,
                  fontSize: 18.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
