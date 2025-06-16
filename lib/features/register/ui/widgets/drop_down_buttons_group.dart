import 'package:flutter/material.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/features/register/ui/widgets/drop_down_button_with_title.dart';

class DropDownButtonsGroup extends StatelessWidget {
  const DropDownButtonsGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonWithTitle(
          apiList: ['one', 'two', 'three', 'four'],
          leadingIcon: Icons.location_on,
          hint: 'Choose your governate',
          title: 'Governate',
        ),
        verticalSpace(height: 20),
        DropdownButtonWithTitle(
          apiList: ['one', 'two', 'three', 'four'],
          leadingIcon: Icons.school,
          hint: 'Choose your grade',
          title: 'Grade',
        ),
        verticalSpace(height: 20),
        DropdownButtonWithTitle(
          apiList: ['one', 'two', 'three', 'four'],
          leadingIcon: Icons.location_city,
          hint: 'Choose your center',
          title: 'Center',
        ),
      ],
    );
  }
}
