import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:twitter/core/app_decoration/app_images.dart';
import 'package:twitter/core/utils/size_utils.dart';
import 'package:twitter/controllers/controller.dart';
import 'package:twitter/widgets/custom_circular_image.dart';
import 'package:twitter/widgets/custom_divider.dart';

class CustomAppBar extends StatelessWidget {
  final Widget title;
  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => controller.scaffoldKey.currentState?.openDrawer(),
              child: Container(
                margin: getMargin(left: 8),
                child: CustomCircularImage(
                  image: ImageConstants.userImage,
                  size: getSize(30),
                ),
              ),
            ),
            Expanded(child: title),
            Padding(
              padding: getPadding(right: 8, left: 10),
              child: SvgPicture.asset(ImageConstants.settingsIcon),
            )
          ],
        ),
        const CustomDivider(),
      ],
    );
  }
}
