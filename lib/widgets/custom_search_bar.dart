import 'package:flutter/material.dart';
import 'package:twitter/core/utils/size_utils.dart';
import 'package:twitter/themes/text_style.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(28),
      child: TextField(
        // enabled: false,
        decoration: InputDecoration(
          hintText: "Search Twitter",
          fillColor: AppTextSTyle.textStyle1.color!.withOpacity(0.15),
          hintStyle: AppTextSTyle.textStyle1.copyWith(fontSize: 15),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(
              color: AppTextSTyle.textStyle1.color!.withOpacity(0.3),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(
              color: AppTextSTyle.textStyle1.color!.withOpacity(0.3),
            ),
          ),
          contentPadding: getPadding(bottom: 10, left: 10),
        ),
      ),
    );
  }
}
