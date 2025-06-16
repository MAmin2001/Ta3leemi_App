import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';

class DropdownButtonWithTitle extends StatefulWidget {
  final List<String> apiList;
  final IconData leadingIcon;
  final String hint;
  final String title;
  final Color? titleColor;

  const DropdownButtonWithTitle({
    super.key,
    required this.apiList,
    required this.leadingIcon,
    required this.hint,
    this.titleColor,
    required this.title,
  });

  @override
  State<DropdownButtonWithTitle> createState() =>
      _DropdownButtonWithTitleState();
}

class _DropdownButtonWithTitleState extends State<DropdownButtonWithTitle> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            color: widget.titleColor ?? ColorsManager.darkGrey,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        verticalSpace(height: 8.h),
        DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            iconStyleData: IconStyleData(
              icon: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.keyboard_arrow_down, size: 30),
              ),
            ),
            hint: Row(
              children: [
                Icon(
                  widget.leadingIcon,
                  size: 30,
                  color: ColorsManager.darkGrey,
                ),
                horizontalSpace(width: 6.0),
                Expanded(
                  child: Text(
                    widget.hint,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: ColorsManager.grey,
                      fontWeight: FontWeight.w400,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            isExpanded: true,
            value: dropdownValue,
            style: TextStyle(
              color: ColorsManager.darkGrey,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
            onChanged: (String? value) {
              setState(() {
                dropdownValue = value!;
              });
            },
            items:
                widget.apiList.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
            buttonStyleData: ButtonStyleData(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: ColorsManager.mainBlue, width: 3.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}



// List<String> list = widget.apiList;
//     String dropdownValue = list.first;