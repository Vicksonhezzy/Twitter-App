import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:twitter/core/app_decoration/app_images.dart';
import 'package:twitter/core/utils/size_utils.dart';
import 'package:twitter/models/tweet_model.dart';
import 'package:twitter/controllers/home_controller.dart';
import 'package:twitter/widgets/app_bar.dart';
import 'package:twitter/widgets/custom_divider.dart';
import 'package:twitter/widgets/tweet_card/tweet_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return SafeArea(
      child: Scaffold(
        key: key,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
              ),
              floating: true,
              titleSpacing: 0,
              collapsedHeight: getVerticalSize(58),
              flexibleSpace: FlexibleSpaceBar(
                title: CustomAppBar(
                    title: SvgPicture.asset(ImageConstants.twitterLogo)),
                titlePadding: EdgeInsets.zero,
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    TweetModel model = controller.tweet[index];
                    return TweetCard(model: model);
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

class DefaultWidget extends StatelessWidget {
  const DefaultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
