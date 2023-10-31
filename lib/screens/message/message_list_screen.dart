import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twitter/core/utils/size_utils.dart';
import 'package:twitter/models/tweet_model.dart';
import 'package:twitter/controllers/message_list_controller.dart';
import 'package:twitter/screens/message/widgets/message_card.dart';
import 'package:twitter/widgets/app_bar.dart';
import 'package:twitter/widgets/custom_divider.dart';
import 'package:twitter/widgets/custom_search_bar.dart';

class MessageListScreen extends StatelessWidget {
  const MessageListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final controller = Get.put(MessageListController());
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 100,
              centerTitle: true,
              automaticallyImplyLeading: false,
              titleSpacing: 0,
              elevation: 0,
              toolbarHeight: 70,
              // bottom: const CustomAppBarDivider(),
              title: const CustomAppBar(title: CustomSearchBar()),
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: getPadding(left: 20),
                title: Text(
                  "Message Requests",
                  style: textTheme.bodyLarge!
                      .copyWith(fontWeight: FontWeight.w900),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                ListView.separated(
                  padding: getPadding(top: 20),
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    TweetModel model = controller.tweet[index];
                    return MessageCard(model: model);
                  },
                  separatorBuilder: (context, index) => const CustomDivider(),
                  itemCount: controller.tweet.length,
                  shrinkWrap: true,
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
