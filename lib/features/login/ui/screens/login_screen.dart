import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/helpers/extensions.dart';
import 'package:ta3leemi_project/core/routing/routes.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/core/widgets/white_box_with_shadow.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/core/widgets/gradient_text_button.dart';
import 'package:ta3leemi_project/core/widgets/custom_text_button.dart';
import 'package:ta3leemi_project/features/login/logic/cubit/login_cubit.dart';
import 'package:ta3leemi_project/features/login/ui/widgets/email_and_password.dart';
import 'package:ta3leemi_project/features/login/ui/widgets/login_bloc_listener.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: WhiteBoxWithShadow(
            leftPadding: 16,
            rightPadding: 16,
            topPadding: 40,
            bottomPadding: 40,
            shadowColor: ColorsManager.mainBlue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Sign In NOW !',
                    style: TextStyle(
                      color: ColorsManager.mainBlue,
                      fontSize: 32.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                verticalSpace(height: 40),
                EmailAndPassword(),
                Align(
                  alignment: Alignment.centerRight,
                  child: CustomTextButton(
                    text: 'Forgot Password ?',
                    textSize: 16,
                    buttonWidth: 140,
                    borderRadius: 5,
                    onPressed: () {},
                  ),
                ),
                verticalSpace(height: 50),
                GradientTextButton(
                  text: 'Login',
                  onTap: () {
                    validateThenDoLogin(context);
                  },
                ),
                verticalSpace(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account ?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    CustomTextButton(
                      textSize: 14,
                      buttonWidth: 100,
                      text: 'Create Account',
                      onPressed: () {
                        context.pushReplacementNamed(Routes.regeisterRoute);
                      },
                    ),
                  ],
                ),
                LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void validateThenDoLogin(BuildContext context) {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    context.read<LoginCubit>().emitLoginStates();
  }
}
