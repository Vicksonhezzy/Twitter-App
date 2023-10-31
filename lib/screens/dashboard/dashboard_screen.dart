import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:twitter/core/app_decoration/app_images.dart';
import 'package:twitter/controllers/controller.dart';
import 'package:twitter/screens/home/home.dart';
import 'package:twitter/screens/message/message_list_screen.dart';
import 'package:twitter/screens/notification/notification.dart';
import 'package:twitter/screens/search/search.dart';
import 'package:twitter/widgets/custom_drawer.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  List<BottomNavigationBarItem> items(bool isDark) {
    Color color = isDark ? Colors.white : Colors.blue;
    return [
      BottomNavigationBarItem(
        icon: SvgPicture.asset(ImageConstants.homeIcon),
        label: '',
        activeIcon: SvgPicture.asset(ImageConstants.homeIcon, color: color),
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(ImageConstants.searchIcon2),
        label: '',
        activeIcon: SvgPicture.asset(ImageConstants.searchIcon2, color: color),
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(ImageConstants.bellIcon),
        label: '',
        activeIcon: SvgPicture.asset(ImageConstants.bellIcon, color: color),
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(ImageConstants.mailIcon),
        label: '',
        activeIcon: SvgPicture.asset(ImageConstants.mailIcon, color: color),
      ),
    ];
  }

  final List<Widget> body = [
    const Home(),
    const Search(),
    const Notifications(),
    const MessageListScreen(),
    // ...List.generate(1, (index) => const DefaultWidget()),
  ];

  final controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    final isDark = Brightness.dark == brightness;
    return Obx(
      () => (Scaffold(
        key: controller.scaffoldKey,
        drawer: const CustomDrawer(),
        body: body[controller.currentIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          items: items(isDark),
          currentIndex: controller.currentIndex.value,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            controller.currentIndex.value = value;
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: SvgPicture.asset(controller.currentIndex.value == 3
              ? ImageConstants.addIcon
              : ImageConstants.addTextIcon),
        ),
      )),
    );
  }
}
