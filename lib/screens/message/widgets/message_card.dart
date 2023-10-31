import 'package:flutter/material.dart';
import 'package:twitter/core/utils/size_utils.dart';
import 'package:twitter/models/tweet_model.dart';
import 'package:twitter/themes/text_style.dart';
import 'package:twitter/widgets/tweet_card/image_widget.dart';
import 'package:twitter/widgets/tweet_card/user_tweet_header.dart';

class MessageCard extends StatelessWidget {
  final TweetModel model;
  const MessageCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: getPadding(left: 15, right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageWidget(model: model),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserTweetHeader(model: model, showTrailing: false),
                    Padding(
                      padding: getPadding(top: 3),
                      child: Text(
                        model.text,
                        maxLines: 2,
                        style: textTheme.bodyMedium!.copyWith(
                          height: 1.4,
                          overflow: TextOverflow.ellipsis,
                          color: AppTextSTyle.textStyle1.color!,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
