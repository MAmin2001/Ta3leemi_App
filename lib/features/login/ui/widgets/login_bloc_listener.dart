import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta3leemi_project/core/helpers/extensions.dart';
import 'package:ta3leemi_project/core/networking/api_error_model.dart';
import 'package:ta3leemi_project/core/routing/routes.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/features/login/logic/cubit/login_cubit.dart';
import 'package:ta3leemi_project/features/login/logic/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen:
          (previous, current) =>
              current is LoginLoading ||
              current is LoginSuccess ||
              current is LoginError,
      listener: (context, state) {
        state.whenOrNull(
          loginLoading: () {
            showDialog(
              context: context,
              builder:
                  (context) => const Center(
                    child: CircularProgressIndicator(
                      color: ColorsManager.mainBlue,
                    ),
                  ),
            );
          },
          loginSuccess: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.layoutRoute);
          },
          loginError: (apiErrorModel) {
            setupErrorState(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, ApiErrorModel apiErrorModel) {
    context.pop();
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            icon: const Icon(Icons.error, color: Colors.red, size: 32),
            content: Text(
              apiErrorModel.errors['email'],
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text(
                  'Got it',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
    );
  }
}
