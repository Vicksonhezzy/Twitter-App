import 'package:flutter/material.dart';
import 'package:twitter/models/tweet_model.dart';
import 'package:twitter/screens/notification/widgets/notication_card.dart';
import 'package:twitter/widgets/custom_divider.dart';

class NotificationBuilder extends StatelessWidget {
  final List<TweetModel> tweet;
  const NotificationBuilder({Key? key, required this.tweet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        TweetModel model = tweet[index];
        return NotificationCard(model: model);
      },
      separatorBuilder: (context, index) => const CustomDivider(),
      itemCount: tweet.length,
      shrinkWrap: true,
    );
  }
}
