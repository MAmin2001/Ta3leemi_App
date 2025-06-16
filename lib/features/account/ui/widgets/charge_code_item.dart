import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/core/widgets/custom_text_button.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/core/widgets/white_box_with_shadow.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/date_time_text.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/text_with_opacity_background.dart';

class ChargeCodeItem extends StatelessWidget {
  const ChargeCodeItem({
    super.key,
    required this.item,
    required this.dateTime,
    required this.price,
  });
  final String item;
  final String dateTime;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: WhiteBoxWithShadow(
        leftPadding: 0,
        rightPadding: 0,
        topPadding: 0,
        bottomPadding: 0,
        shadowColor: ColorsManager.chargeCodesColor,
        child: Column(
          children: [
            ItemWithDateAndPrice(
              item: item,
              dateTime: dateTime,
              price: price,
              icon: Icons.check_circle_outline,
              color: ColorsManager.chargeCodesColor,
            ),
            verticalSpace(height: 20.0),
            CustomTextButton(
              text: 'Redeem',
              onPressed: () {},
              textColor: ColorsManager.chargeCodesColor,
              backgroundColor: ColorsManager.chargeCodesColor.withOpacity(0.2),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemWithDateAndPrice extends StatelessWidget {
  const ItemWithDateAndPrice({
    super.key,
    required this.item,
    required this.dateTime,
    required this.price,
    required this.icon,
    required this.color,
  });
  final String item;
  final String dateTime;
  final String price;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(icon, color: color, size: 35),
        ),
        horizontalSpace(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item,
                style: TextStyle(
                  fontSize: 16.0.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              verticalSpace(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DateTimeText(dateTimeText: dateTime),
                  TextWithOpacityBackground(
                    text: price,
                    color: color,
                    height: 50,
                    width: 70,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
