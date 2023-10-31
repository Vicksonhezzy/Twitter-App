import 'package:flutter/material.dart';
import 'package:twitter/core/utils/size_utils.dart';
import 'package:twitter/themes/text_style.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTextSTyle.textStyle1.color!.withOpacity(0.2),
      margin: getMargin(top: 8, bottom: 8),
      height: 0.5,
    );
  }
}
