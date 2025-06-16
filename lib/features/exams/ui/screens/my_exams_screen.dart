import 'package:flutter/material.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/features/exams/ui/widgets/item_for_exam_and_quiz.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/custom_app_bar.dart';

class MyExamsScreen extends StatelessWidget {
  const MyExamsScreen({super.key});

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
                        title: 'Exam on unit 2 and 3',
                        description:
                            'important exam must answer at least 85% of questions correctly',
                        deadline: 'wensday 07:00 pm',
                        time: '60 minutes',
                        difficulty: 'hard',
                        onPressed: () {},
                        difficultyColor: Colors.red,
                        buttonText: 'Enter Exam',
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
