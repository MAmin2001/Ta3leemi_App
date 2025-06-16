import 'package:flutter/material.dart';
import 'package:ta3leemi_project/core/helpers/app_regex.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/core/widgets/text_form_field_with_title.dart';
import 'package:ta3leemi_project/features/register/ui/widgets/drop_down_buttons_group.dart';

class RegeisterForm extends StatefulWidget {
  const RegeisterForm({super.key});

  @override
  State<RegeisterForm> createState() => _RegeisterFormState();
}

class _RegeisterFormState extends State<RegeisterForm> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormFieldWithTitle(
          title: 'Name',
          hintText: 'John Doe',
          suffixIcon: Icon(Icons.person),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a your name';
            }
          },
        ),
        verticalSpace(height: 20),
        TextFormFieldWithTitle(
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
          title: 'Phone Number',
          hintText: '01xxxxxxxx',
          suffixIcon: Icon(Icons.phone),
          inputType: TextInputType.phone,
          validator: (value) {
            if (value == null ||
                value.isEmpty ||
                !AppRegex.isPhoneNumberValid(value)) {
              return 'Please enter a valid phone number';
            }
          },
        ),
        verticalSpace(height: 20),
        TextFormFieldWithTitle(
          title: 'Parent\'s Number',
          hintText: '01xxxxxxxx',
          suffixIcon: Icon(Icons.phone),
          inputType: TextInputType.phone,
          validator: (value) {
            if (value == null ||
                value.isEmpty ||
                !AppRegex.isPhoneNumberValid(value)) {
              return 'Please enter a valid phone number';
            }
          },
        ),
        verticalSpace(height: 20),
        DropDownButtonsGroup(),
        verticalSpace(height: 20),
        TextFormFieldWithTitle(
          inputType: TextInputType.visiblePassword,
          isObscureText: isObscureText,
          title: 'Password',
          hintText: 'xxxxxxxx',
          suffixIcon: GestureDetector(
            child: Icon(
              isObscureText ? Icons.visibility_off : Icons.visibility,
            ),
            onTap: () {
              setState(() {
                isObscureText = !isObscureText;
              });
            },
          ),
          validator: (value) {
            if (value == null ||
                value.isEmpty ||
                !AppRegex.isEmailValid(value)) {
              return 'Please enter a valid password';
            }
          },
        ),
      ],
    );
  }
}
