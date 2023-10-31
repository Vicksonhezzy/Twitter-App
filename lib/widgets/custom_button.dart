import 'package:flutter/material.dart';
import 'package:twitter/core/utils/size_utils.dart';
import 'package:twitter/themes/text_style.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const CustomButton({Key? key, this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(left: 10, right: 10, top: 6, bottom: 6),
      margin: getMargin(top: 15),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(76, 158, 235, 1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style:
            AppTextSTyle.textStyle1.copyWith(fontSize: 15, color: Colors.white),
      ),
    );
  }
}
