import 'package:flutter/material.dart';
import 'package:ta3leemi_project/core/helpers/extensions.dart';
import 'package:ta3leemi_project/core/routing/routes.dart';
import 'package:ta3leemi_project/core/themes/assets_manager.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/features/exams/ui/widgets/exams_screen_item.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/custom_app_bar.dart';

class ExamsScreen extends StatelessWidget {
  const ExamsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CustomTextAppBar(),
                verticalSpace(height: 30),
                ExamsScreenItem(
                  itemShadowColor: ColorsManager.examsColor,
                  itemImage: AssetsManager.examsImage,
                  itemTitle: 'Exams',
                  onTap: () {
                    context.pushNamed(Routes.myExamsRoute);
                  },
                ),
                verticalSpace(height: 40),
                ExamsScreenItem(
                  itemShadowColor: ColorsManager.quizzesColor,
                  itemImage: AssetsManager.quizzesImage,
                  itemTitle: 'Quizzes',
                  onTap: () {
                    context.pushNamed(Routes.myQuizzesRoute);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
