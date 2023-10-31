import 'package:flutter/material.dart';
import 'package:twitter/core/utils/size_utils.dart';
import 'package:twitter/models/tweet_model.dart';
import 'package:twitter/themes/text_style.dart';
import 'package:twitter/widgets/custom_circular_image.dart';

class ImageWidget extends StatelessWidget {
  final TweetModel model;
  const ImageWidget({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(right: 8),
      child: Column(
        children: [
          CustomCircularImage(
            image: model.userImage,
            size: getSize(40),
            margin: EdgeInsets.zero,
          ),
          if (model.isThread)
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      child: VerticalDivider(
                        thickness: 2,
                        color: AppTextSTyle.textStyle1.color!.withOpacity(0.5),
                      ),
                    ),
                  ),
                  CustomCircularImage(
                    image: model.userImage,
                    size: getSize(35),
                    margin: EdgeInsets.zero,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
