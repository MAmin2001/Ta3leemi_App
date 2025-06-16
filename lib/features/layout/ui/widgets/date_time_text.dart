import 'package:flutter/material.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';

class DateTimeText extends StatelessWidget {
  const DateTimeText({super.key, required this.dateTimeText});
  final String dateTimeText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.access_time_outlined, size: 22, color: ColorsManager.grey),
        horizontalSpace(width: 5),
        Text(dateTimeText, style: TextStyle(color: ColorsManager.grey)),
      ],
    );
  }
}
