import 'package:flutter/material.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/custom_app_bar.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/features/home/ui/widgets/courses_progress_box.dart';
import 'package:ta3leemi_project/features/home/ui/widgets/gradient_home_card.dart';
import 'package:ta3leemi_project/features/home/ui/widgets/home_last_activity_box.dart';
import 'package:ta3leemi_project/features/leaderboard/ui/widgets/home_leaderboard_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CustomTextAppBar(),
                verticalSpace(height: 35.0),
                GradientHomeCard(),
                LastActivityBox(),
                HomeLeaderboardBox(),
                CoursesProgressBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
