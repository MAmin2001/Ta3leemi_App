import 'package:flutter/material.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/features/exams/ui/widgets/item_for_exam_and_quiz.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/custom_app_bar.dart';

class MyQuizzesScreen extends StatelessWidget {
  const MyQuizzesScreen({super.key});

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
                CustomIconAppBar(),
                verticalSpace(height: 30),
                ListView.builder(
                  itemBuilder:
                      (context, index) => ItemForExamAndQuiz(
                        title: 'Quiz on lesson 1',
                        description: 'simple quiz on lesson 1',
                        deadline: 'Tommorow 06:00 pm',
                        time: '10 minutes',
                        difficulty: 'easy',
                        onPressed: () {},
                        difficultyColor: Colors.green,
                        buttonText: 'Enter Quiz',
                      ),
                  itemCount: 5,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
