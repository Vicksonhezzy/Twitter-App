import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter/core/utils/size_utils.dart';

class CustomImageIcon extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final String image;
  final double? height;
  final double? width;
  const CustomImageIcon(
      {Key? key, this.margin, required this.image, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? getMargin(right: 15),
      child: SvgPicture.asset(
        image,
        width: width,
        height: height,
        color: Colors.red,
        fit: BoxFit.cover,
      ),
    );
  }
}
