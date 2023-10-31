import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter/core/app_decoration/app_images.dart';
import 'package:twitter/core/utils/size_utils.dart';
import 'package:twitter/models/tweet_model.dart';
import 'package:twitter/themes/text_style.dart';

class FeedWidget extends StatelessWidget {
  final TweetModel model;
  const FeedWidget({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: model.isFeed,
      child: Padding(
        padding: getPadding(left: 30, bottom: 2),
        child: Row(
          children: [
            Padding(
              padding: getPadding(right: 5),
              child: icon(),
            ),
            Text(" ${model.name} ${text()}", style: AppTextSTyle.textStyle1.copyWith(fontSize: getSize(12)))
          ],
        ),
      ),
    );
  }

  Widget icon() {
    switch (model.feedType) {
      case FeedType.comment:
        return image(ImageConstants.commentIcon);
      case FeedType.reTweet:
        return image(ImageConstants.retweetIcon);
      case FeedType.like:
        return image(ImageConstants.likeHeaderIcon);
      default:
        return Container();
    }
  }

  Widget image(String image) {
    return SizedBox(
      width: getHorizontalSize(10),
      height: getVerticalSize(10),
      child: SvgPicture.asset(image),
    );
  }

  String text() {
    switch (model.feedType) {
      case FeedType.comment:
        return "Commented";
      case FeedType.reTweet:
        return "Retweeted";
      case FeedType.like:
        return "Liked";
      default:
        return "";
    }
  }
}
