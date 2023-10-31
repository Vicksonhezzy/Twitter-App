import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter/core/app_decoration/app_images.dart';
import 'package:twitter/core/utils/size_utils.dart';
import 'package:twitter/themes/text_style.dart';
import 'package:twitter/widgets/custom_circular_image.dart';
import 'package:twitter/widgets/custom_divider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: getMargin(left: 8),
                  child: CustomCircularImage(
                    image: ImageConstants.userImage,
                    size: getSize(50),
                  ),
                ),
                Padding(
                  padding: getPadding(left: 20),
                  child: Text(
                    'Ugwudike Victor',
                    style: TextStyle(
                        fontSize: getFontSize(18), fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: getPadding(left: 20),
                  child: Text(
                    '@UgwudikeV',
                    style: TextStyle(
                      fontSize: getFontSize(14),
                      fontWeight: FontWeight.w500,
                      color: AppTextSTyle.textStyle1.color!,
                    ),
                  ),
                )
              ],
            ),
          ),
          listTile(icon: ImageConstants.profileIcon, text: "Profile"),
          listTile(icon: ImageConstants.listsIcon, text: "Lists"),
          listTile(icon: ImageConstants.topicsIcon, text: "Topics"),
          listTile(icon: ImageConstants.bookmarksIcon, text: "Bookmarks"),
          listTile(icon: ImageConstants.momentsIcon, text: "Moments"),
          const CustomDivider(),
          listTile(text: "Settings and Privacy"),
          listTile(text: "Help Center"),
        ],
      ),
    );
  }

  Widget listTile({String? icon, required String text}) {
    return ListTile(
        leading: icon == null ? null : SvgPicture.asset(icon),
        title: Text(text));
  }
}
