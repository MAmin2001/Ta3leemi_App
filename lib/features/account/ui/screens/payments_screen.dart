import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/core/widgets/white_box_with_shadow.dart';
import 'package:ta3leemi_project/features/account/ui/widgets/charge_code_item.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/custom_app_bar.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/text_with_opacity_background.dart';

class PaymentsScreen extends StatelessWidget {
  const PaymentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                CustomIconAppBar(),
                verticalSpace(height: 30.0),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => PaymentItem(),
                  itemCount: 7,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PaymentItem extends StatelessWidget {
  const PaymentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: WhiteBoxWithShadow(
        leftPadding: 0,
        rightPadding: 0,
        topPadding: 0,
        bottomPadding: 0,
        shadowColor: ColorsManager.paymentsColor,
        child: Column(
          children: [
            ItemWithDateAndPrice(
              item: 'Determinants and matrices',
              dateTime: '25 May 2025, 09:00 PM',
              price: '90.00',
              icon: Icons.payments_rounded,
              color: ColorsManager.paymentsColor,
            ),
            verticalSpace(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Purshased by :',
                  style: TextStyle(
                    fontSize: 16.0.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                horizontalSpace(width: 5),
                TextWithOpacityBackground(
                  text: 'admin',
                  color: ColorsManager.paymentsColor,
                  height: 40,
                  width: 80,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
