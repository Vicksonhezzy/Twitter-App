import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter/core/app_decoration/app_images.dart';
import 'package:twitter/core/utils/size_utils.dart';
import 'package:twitter/models/tweet_model.dart';

class TweetProperty extends StatelessWidget {
  final TweetModel model;
  const TweetProperty({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(right: 20, top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          image(ImageConstants.commentIcon, model.comments),
          image(ImageConstants.retweetIcon, model.reTweets),
          image(ImageConstants.likeIcon, model.likes),
          image(ImageConstants.shareIcon),
        ],
      ),
    );
  }

  Widget image(String image, [int? value]) {
    return Row(
      children: [
        SizedBox(
          width: getHorizontalSize(14),
          height: getVerticalSize(10),
          child: SvgPicture.asset(image, fit: BoxFit.fill),
        ),
        if (value != null) Text(" ${value.toString()}"),
      ],
    );
  }
}
