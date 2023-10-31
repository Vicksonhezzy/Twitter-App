import 'package:flutter/material.dart';
import 'package:twitter/core/utils/size_utils.dart';
import 'package:twitter/models/tweet_model.dart';
import 'package:twitter/themes/text_style.dart';

class UserTweetHeader extends StatelessWidget {
  final TweetModel model;
  final bool showTrailing;
  const UserTweetHeader(
      {Key? key, required this.model, this.showTrailing = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          constraints: BoxConstraints(
            maxWidth: getHorizontalSize(200),
          ),
          child: IntrinsicWidth(
            child: Text(
              "${model.name} ",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w900,
                fontSize: getSize(15),
              ),
            ),
          ),
        ),
        Expanded(
          child: Text(
            model.handle,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: AppTextSTyle.textStyle1,
          ),
        ),
        if (showTrailing)
          Icon(
            Icons.keyboard_arrow_down,
            color: AppTextSTyle.textStyle1.color,
            size: getSize(12),
          ),
      ],
    );
  }
}
