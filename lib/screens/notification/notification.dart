import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twitter/core/utils/size_utils.dart';
import 'package:twitter/models/tweet_model.dart';
import 'package:twitter/controllers/notification_controller.dart';
import 'package:twitter/screens/notification/widgets/notification_builder.dart';
import 'package:twitter/widgets/app_bar.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NotificationController());
    final textTheme = Theme.of(context).textTheme;
    final color = Theme.of(context).primaryColor;
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              // pinned: true,
              expandedHeight: 100,
              centerTitle: true,
              automaticallyImplyLeading: false,
              titleSpacing: 0,
              elevation: 0,
              // toolbarHeight: 70,
              title: CustomAppBar(
                title: Padding(
                  padding: getPadding(left: 10),
                  child: Text(
                    "Notifications",
                    style: textTheme.bodyLarge!
                        .copyWith(fontWeight: FontWeight.w900, fontSize: 20),
                  ),
                ),
              ),
              bottom: TabBar(
                controller: controller.tabController,
                indicatorColor: color,
                indicatorPadding: getPadding(left: 10, right: 10),
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                ),
                labelColor: textTheme.bodyLarge!.color,
                unselectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                ),
                indicatorWeight: 3,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  tab("All"),
                  tab("Verified"),
                  tab("Mentions"),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SizedBox(
                    height: size.height / 1.5,
                    child: TabBarView(
                      controller: controller.tabController,
                      children: [
                        NotificationBuilder(tweet: controller.tweet),
                        NotificationBuilder(tweet: controller.tweet),
                        NotificationBuilder(
                          tweet: controller.tweet
                              .where((element) =>
                                  element.feedType == FeedType.comment)
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Tab tab(String text) => Tab(text: text);
}
