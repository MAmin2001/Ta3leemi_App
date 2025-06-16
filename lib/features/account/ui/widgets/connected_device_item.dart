import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/core/widgets/gradient_text_button.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/core/widgets/white_box_with_shadow.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/date_time_text.dart';

class ConnectedDeviceItem extends StatelessWidget {
  const ConnectedDeviceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return WhiteBoxWithShadow(
      leftPadding: 0,
      rightPadding: 0,
      bottomPadding: 12,
      topPadding: 12,
      shadowColor: ColorsManager.connectedDevicesColor,
      child: Column(
        children: [
          Text(
            '🖥️  Edge (Windows)',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          verticalSpace(height: 20),
          DeviceDateTime(
            label: 'Joined since',
            dateTime: '25 May 2025, 09:00 pm',
          ),
          verticalSpace(height: 10),
          DeviceDateTime(
            label: 'Last login at',
            dateTime: '1 Jun 2025, 01:00 pm',
          ),
          verticalSpace(height: 20),
          GradientTextButton(
            text: 'LogOut',
            onTap: () {},
            height: 60,
            width: 150,
            colorsList: [Colors.red, Colors.redAccent],
          ),
        ],
      ),
    );
  }
}

class DeviceDateTime extends StatelessWidget {
  const DeviceDateTime({
    super.key,
    required this.label,
    required this.dateTime,
  });

  final String label;
  final String dateTime;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '$label : ',
          style: TextStyle(
            fontSize: 18.0.sp,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        horizontalSpace(width: 5),
        DateTimeText(dateTimeText: dateTime),
      ],
    );
  }
}
