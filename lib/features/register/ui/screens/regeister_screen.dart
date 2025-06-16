import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/helpers/extensions.dart';
import 'package:ta3leemi_project/core/routing/routes.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/core/widgets/white_box_with_shadow.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/core/widgets/gradient_text_button.dart';
import 'package:ta3leemi_project/core/widgets/custom_text_button.dart';
import 'package:ta3leemi_project/features/register/ui/widgets/regeister_form.dart';

class RegeisterScreen extends StatefulWidget {
  const RegeisterScreen({super.key});

  @override
  State<RegeisterScreen> createState() => _RegeisterScreenState();
}

class _RegeisterScreenState extends State<RegeisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              WhiteBoxWithShadow(
                leftPadding: 16,
                rightPadding: 16,
                topPadding: 40,
                bottomPadding: 40,
                shadowColor: ColorsManager.mainBlue,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          color: ColorsManager.mainBlue,
                          fontSize: 32.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    verticalSpace(height: 40),
                    RegeisterForm(),
                    verticalSpace(height: 50),
                    GradientTextButton(text: 'Sign Up', onTap: () {}),
                    verticalSpace(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account ?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        CustomTextButton(
                          buttonWidth: 35,
                          textSize: 14,
                          text: 'Sign In',
                          onPressed: () {
                            context.pushReplacementNamed(Routes.loginRoute);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
