import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/core/widgets/gradient_text_button.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/core/widgets/white_box_with_shadow.dart';
import 'package:ta3leemi_project/features/account/ui/widgets/wallet_text_field.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/app_vertical_separator.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/custom_app_bar.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/text_with_opacity_background.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CustomIconAppBar(),
                WhiteBoxWithShadow(
                  leftPadding: 0,
                  rightPadding: 0,
                  topPadding: 30,
                  bottomPadding: 20,
                  insideVerticalPadding: 30,
                  shadowColor: ColorsManager.walletColor,
                  child: Column(
                    children: [
                      CurrentBalancePart(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: AppVerticalSeparator(),
                      ),
                      PayOnlinePart(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: AppVerticalSeparator(),
                      ),
                      ChargeCodesPart(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CurrentBalancePart extends StatelessWidget {
  const CurrentBalancePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Current Balance :',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        verticalSpace(height: 15),
        TextWithOpacityBackground(
          text: '1500 EGP',
          textSize: 35.sp,
          color: ColorsManager.walletColor,
          height: 130,
          width: 220,
          borderRadius: 50,
        ),
      ],
    );
  }
}

class PayOnlinePart extends StatelessWidget {
  const PayOnlinePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Pay Online',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        verticalSpace(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: WalletTextField(
            suffixIcon: Icons.payment_rounded,
            hintText: '200.0',
            inputType: TextInputType.number,
          ),
        ),
        verticalSpace(height: 30.0),
        GradientTextButton(
          text: 'PAY',
          width: 150,
          colorsList: [ColorsManager.walletColor, Colors.green],
          onTap: () {},
        ),
      ],
    );
  }
}

class ChargeCodesPart extends StatelessWidget {
  const ChargeCodesPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Charge Codes',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        verticalSpace(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            WalletTextField(
              width: 105,
              suffixIconSize: 22,
              suffixIcon: Icons.currency_exchange_rounded,
              hintText: 'xxxxxx',
            ),
            WalletTextField(
              width: 105,
              suffixIconSize: 22,
              suffixIcon: Icons.currency_exchange_rounded,
              hintText: 'xxxxxx',
            ),
            WalletTextField(
              width: 105,
              suffixIconSize: 22,
              suffixIcon: Icons.currency_exchange_rounded,
              hintText: 'xxxxxx',
            ),
          ],
        ),
        verticalSpace(height: 30.0),
        GradientTextButton(
          text: 'SEND',
          width: 150,
          colorsList: [ColorsManager.walletColor, Colors.green],
          onTap: () {},
        ),
      ],
    );
  }
}
