import 'package:flutter/material.dart';
import 'package:twitter/core/utils/size_utils.dart';
import 'package:twitter/models/tweet_model.dart';
import 'package:twitter/widgets/custom_text.dart';
import 'package:twitter/widgets/tweet_card/feed_widget.dart';
import 'package:twitter/widgets/tweet_card/image_widget.dart';
import 'package:twitter/widgets/tweet_card/tweet_property.dart';
import 'package:twitter/widgets/tweet_card/user_tweet_header.dart';

class TweetCard extends StatelessWidget {
  final TweetModel model;
  const TweetCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(left: 15, right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FeedWidget(model: model),
          LimitedBox(
            maxHeight: 750,
            child: LayoutBuilder(builder: (context, constraints) {
              final textPainter = TextPainter(
                  maxLines: 10,
                  text: TextSpan(text: model.text),
                  textDirection: TextDirection.ltr);
              textPainter.layout(maxWidth: constraints.maxWidth - getSize(40));
              return IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ImageWidget(model: model),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UserTweetHeader(model: model),
                          CustomText(
                              text: model.text, textPainter: textPainter),
                          TweetProperty(model: model),
                          if (model.isThread)
                            Padding(
                              padding: getPadding(top: 10, bottom: 8),
                              child: const Text("Show this thread",
                                  style: TextStyle(color: Colors.blue)),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
