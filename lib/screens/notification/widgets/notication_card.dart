import 'package:flutter/material.dart';
import 'package:twitter/core/app_decoration/app_images.dart';
import 'package:twitter/core/utils/size_utils.dart';
import 'package:twitter/models/tweet_model.dart';
import 'package:twitter/themes/text_style.dart';
import 'package:twitter/widgets/custom_circular_image.dart';
import 'package:twitter/widgets/custom_image_icon.dart';
import 'package:twitter/widgets/custom_text.dart';

class NotificationCard extends StatelessWidget {
  final TweetModel model;
  const NotificationCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final textPainter = TextPainter(
        maxLines: 8,
        text: TextSpan(text: model.text),
        textDirection: TextDirection.ltr);
    textPainter.layout(maxWidth: size.width - getSize(40));
    return Padding(
      padding: getPadding(top: 10, bottom: 10, left: 18, right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (model.feedType == FeedType.like)
            CustomImageIcon(
              image: ImageConstants.likeHeaderIcon,
              width: getSize(20),
              height: getSize(20),
            ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomCircularImage(
                image: model.userImage,
                size: getSize(30),
                margin: EdgeInsets.zero,
              ),
              RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: model.name,
                      style: textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w900,
                        fontSize: getSize(15),
                      ),
                    ),
                    TextSpan(
                      text: model.feedType == FeedType.like
                          ? "  liked your reply"
                          : "  follows you",
                      style: textTheme.bodyMedium!.copyWith(height: 1.4),
                    ),
                  ],
                ),
              ),
              if (model.text.isNotEmpty)
                CustomText(
                  text: model.text,
                  textPainter: textPainter,
                  maxLines: 8,
                  color: AppTextSTyle.textStyle1.color!,
                )
            ],
          ),
        ],
      ),
    );
  }
}
