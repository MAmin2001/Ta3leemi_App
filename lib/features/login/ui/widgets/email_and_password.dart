import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta3leemi_project/core/helpers/app_regex.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/core/widgets/text_form_field_with_title.dart';
import 'package:ta3leemi_project/features/login/logic/cubit/login_cubit.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          TextFormFieldWithTitle(
            controller: context.read<LoginCubit>().emailController,
            title: 'Email',
            hintText: 'your@email.com',
            suffixIcon: Icon(Icons.email),
            inputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
          ),
          verticalSpace(height: 20),
          TextFormFieldWithTitle(
            controller: context.read<LoginCubit>().passwordController,
            inputType: TextInputType.visiblePassword,
            isObscureText: isObscureText,
            title: 'Password',
            hintText: 'xxxxxxxx',
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return 'Please enter a valid password';
              }
            },
          ),
        ],
      ),
    );
  }
}
