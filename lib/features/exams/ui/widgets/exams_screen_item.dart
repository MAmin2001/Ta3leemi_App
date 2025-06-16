import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/core/widgets/white_box_with_shadow.dart';

class ExamsScreenItem extends StatelessWidget {
  const ExamsScreenItem({
    super.key,
    required this.itemShadowColor,
    required this.itemImage,
    required this.itemTitle,
    required this.onTap,
  });
  final Color itemShadowColor;
  final String itemImage;
  final String itemTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: WhiteBoxWithShadow(
        topPadding: 0,
        bottomPadding: 0,
        rightPadding: 0,
        leftPadding: 0,
        shadowColor: itemShadowColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 130.h,
              width: 130.w,
              child: Image(image: AssetImage(itemImage)),
            ),
            verticalSpace(height: 20),
            Text(
              itemTitle,
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
