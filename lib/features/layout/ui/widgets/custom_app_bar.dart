import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/helpers/extensions.dart';
import 'package:ta3leemi_project/core/routing/routes.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';

class CustomTextAppBar extends StatelessWidget {
  const CustomTextAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Text(
              'Hi, Mahmoud 👋',
              style: TextStyle(fontSize: 20.0.sp, fontWeight: FontWeight.w600),
            ),
            Spacer(),
            CustomIconButton(icon: Icons.notifications_none_outlined),
            horizontalSpace(width: 15.0),
            CustomIconButton(icon: Icons.light_mode_outlined),
          ],
        ),
      ),
    );
  }
}

class CustomIconAppBar extends StatelessWidget {
  const CustomIconAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            CustomIconButton(
              icon: Icons.home_filled,
              onPressed: () {
                context.pushReplacementNamed(Routes.layoutRoute);
              },
            ),
            Spacer(),
            CustomIconButton(icon: Icons.notifications_none_outlined),
            horizontalSpace(width: 15.0),
            CustomIconButton(icon: Icons.light_mode_outlined),
          ],
        ),
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.backGround,
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: Colors.black, size: 28.0),
      ),
    );
  }
}
