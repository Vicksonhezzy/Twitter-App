import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter/core/utils/size_utils.dart';

class CustomCircularImage extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final double? size;
  final String image;
  const CustomCircularImage(
      {Key? key, this.margin, required this.image, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? getMargin(all: 8),
      height: getHorizontalSize(size ?? 30),
      width: getHorizontalSize(size ?? 30),
      child: ClipOval(
        child: CircleAvatar(
          radius: 100,
          child: imageString(),
        ),
      ),
    );
  }

  Widget imageString() {
    if (image.endsWith('svg')) {
      return SvgPicture.asset(
        image,
        fit: BoxFit.fill,
        height: 100,
        width: 100,
      );
    } else if (image.endsWith('png')) {
      return Image.asset(
        image,
        fit: BoxFit.fill,
        height: 100,
        width: 100,
      );
    } else {
      return Image.network(
        image,
        fit: BoxFit.fill,
        height: 100,
        width: 100,
      );
    }
  }
}
