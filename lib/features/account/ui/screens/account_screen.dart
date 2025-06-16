import 'package:flutter/material.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/custom_app_bar.dart';
import 'package:ta3leemi_project/features/account/ui/widgets/custom_account_icon_button.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

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
                ButtonsList(separatorSpace: 25.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
