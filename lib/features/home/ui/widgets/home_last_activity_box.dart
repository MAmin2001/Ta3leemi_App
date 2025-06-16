import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/app_vertical_separator.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/core/widgets/white_box_with_shadow.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/date_time_text.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/text_with_opacity_background.dart';

class LastActivityBox extends StatelessWidget {
  const LastActivityBox({super.key});

  @override
  Widget build(BuildContext context) {
    return WhiteBoxWithShadow(
      leftPadding: 0,
      rightPadding: 0,
      topPadding: 30,
      bottomPadding: 15,
      shadowColor: ColorsManager.lastActivityColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '⏳  Last Activity',
                style: TextStyle(
                  fontSize: 20.0.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextWithOpacityBackground(
                text: 'Today',
                color: ColorsManager.lastActivityColor,
                height: 40,
                width: 70,
              ),
            ],
          ),
          verticalSpace(height: 30),
          SizedBox(
            height: 360.h,
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              separatorBuilder: (context, index) => AppVerticalSeparator(),
              itemBuilder: (context, index) => LastActivityItem(),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}

class LastActivityItem extends StatelessWidget {
  const LastActivityItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextWithOpacityBackground(
          text: '📝',
          color: ColorsManager.lastActivityColor,
          height: 70,
          width: 55,
          borderRadius: 30,
          textSize: 26,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 1),
            child: Column(
              children: [
                Text(
                  'Completed an algebra test with a 90% pass rate',
                  maxLines: 2,
                  style: TextStyle(
                    color: ColorsManager.darkGrey,
                    fontSize: 15.0.sp,
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                verticalSpace(height: 10),
                DateTimeText(dateTimeText: '10 minutes'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
