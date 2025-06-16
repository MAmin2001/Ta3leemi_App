import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';

class ItemTitleWithDescription extends StatelessWidget {
  const ItemTitleWithDescription({
    super.key,
    required this.itemTitle,
    required this.itemDescription,
  });
  final String itemTitle;
  final String itemDescription;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          itemTitle,
          maxLines: 2,
          style: TextStyle(
            color: ColorsManager.darkGrey,
            fontSize: 18.0.sp,
            fontWeight: FontWeight.w500,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        verticalSpace(height: 5),
        Text(
          itemDescription,
          maxLines: 2,
          style: TextStyle(
            color: ColorsManager.darkGrey,
            fontSize: 14.0.sp,
            fontWeight: FontWeight.w400,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
