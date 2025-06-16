import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/core/widgets/white_box_with_shadow.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/app_vertical_separator.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/custom_app_bar.dart';
import 'package:ta3leemi_project/features/leaderboard/ui/widgets/leaderboard_position_item.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              children: [
                CustomIconAppBar(),
                WhiteBoxWithShadow(
                  leftPadding: 0,
                  rightPadding: 0,
                  topPadding: 30,
                  bottomPadding: 0,
                  shadowColor: ColorsManager.leaderBoardColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          '🏆  Leaderboard',
                          style: TextStyle(
                            fontSize: 20.0.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      verticalSpace(height: 25.0),
                      ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder:
                            (context, index) => LeaderBoardPositionItem(),
                        separatorBuilder:
                            (context, index) => AppVerticalSeparator(),
                        itemCount: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
