import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/helpers/extensions.dart';
import 'package:ta3leemi_project/core/routing/routes.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/core/widgets/custom_text_button.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/core/widgets/white_box_with_shadow.dart';

class CustomAccountButton extends StatelessWidget {
  const CustomAccountButton({
    super.key,
    required this.leadingIcon,
    required this.label,
    required this.buttonColor,
    required this.onPressed,
  });
  final IconData leadingIcon;
  final String label;
  final Color buttonColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return WhiteBoxWithShadow(
      shadowColor: buttonColor,
      topPadding: 0,
      leftPadding: 0,
      rightPadding: 0,
      bottomPadding: 0,
      insideHorizontalPadding: 0,
      insideVerticalPadding: 0,
      borderRadius: 30,
      child: ElevatedButton.icon(
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          overlayColor: WidgetStatePropertyAll(buttonColor.withOpacity(0.05)),
          backgroundColor: WidgetStatePropertyAll(Colors.white),
          padding: WidgetStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 16.w, vertical: 0.h),
          ),
          fixedSize: WidgetStateProperty.all(Size(double.maxFinite, 90.h)),
        ),
        iconAlignment: IconAlignment.end,
        icon: Icon(
          Icons.arrow_forward_ios_outlined,
          size: 26,
          color: buttonColor,
        ),
        onPressed: onPressed,
        label: Row(
          children: [
            Icon(leadingIcon, color: buttonColor, size: 35),
            horizontalSpace(width: 10),
            Text(
              label,
              style: TextStyle(
                color: buttonColor,
                fontSize: 20.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonsList extends StatelessWidget {
  const ButtonsList({super.key, required this.separatorSpace});
  final double separatorSpace;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAccountButton(
          buttonColor: ColorsManager.updateProfileColor,
          leadingIcon: Icons.person,
          label: 'Update Profile',
          onPressed: () {
            context.pushNamed(Routes.updateProfileRoute);
          },
        ),
        verticalSpace(height: separatorSpace),
        CustomAccountButton(
          buttonColor: ColorsManager.walletColor,
          leadingIcon: Icons.wallet_rounded,
          label: 'Wallet',
          onPressed: () {
            context.pushNamed(Routes.walletRoute);
          },
        ),
        verticalSpace(height: separatorSpace),
        CustomAccountButton(
          buttonColor: ColorsManager.chargeCodesColor,
          leadingIcon: Icons.currency_exchange_rounded,
          label: 'Charge Codes',
          onPressed: () {
            context.pushNamed(Routes.chargeCodesRoute);
          },
        ),
        verticalSpace(height: separatorSpace),
        CustomAccountButton(
          buttonColor: ColorsManager.paymentsColor,
          leadingIcon: Icons.payments_rounded,
          label: 'Payments',
          onPressed: () {
            context.pushNamed(Routes.paymentsRoute);
          },
        ),
        verticalSpace(height: separatorSpace),
        CustomAccountButton(
          buttonColor: ColorsManager.connectedDevicesColor,
          leadingIcon: Icons.devices_rounded,
          label: 'Connected Devices',
          onPressed: () {
            context.pushNamed(Routes.connectedDevicesRoute);
          },
        ),
        verticalSpace(height: separatorSpace),
        CustomAccountButton(
          buttonColor: Colors.red,
          leadingIcon: Icons.logout_rounded,
          label: 'LogOut',
          onPressed: () {
            showDialog(
              context: context,
              builder:
                  (context) => AlertDialog(
                    icon: const Icon(
                      Icons.warning_rounded,
                      color: Colors.red,
                      size: 32,
                    ),
                    content: Text(
                      'Are You Sure ?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    actions: [
                      CustomTextButton(
                        buttonWidth: 50,
                        text: 'Yes',
                        textColor: Colors.white,
                        backgroundColor: Colors.red,
                        onPressed: () {
                          context.pop();
                          context.pushReplacementNamed(Routes.loginRoute);
                        },
                      ),
                      CustomTextButton(
                        buttonWidth: 50,
                        text: 'No',
                        textColor: Colors.white,
                        backgroundColor: ColorsManager.mainBlue,
                        onPressed: () {
                          context.pop();
                        },
                      ),
                    ],
                  ),
            );
          },
        ),
      ],
    );
  }
}
