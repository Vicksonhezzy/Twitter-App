import 'package:flutter/material.dart';
import 'package:twitter/core/utils/size_utils.dart';

class CustomText extends StatelessWidget {
  final int maxLines;
  final TextPainter textPainter;
  final String text;
  final Color? color;
  const CustomText(
      {Key? key,
      this.color,
      required this.text,
      this.maxLines = 10,
      required this.textPainter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: getPadding(top: 3),
      child: SizedBox(
        width: size.width / 1.25,
        child: RichText(
          text: parseText(text, textTheme),
          maxLines: maxLines,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  TextSpan parseText(String text, TextTheme textTheme) {
    final List<String> words = text.split(' ');

    final truncatedWords = words.take(maxLines * 8).toList();

    final RegExp regex = RegExp(r"#\w+");

    final List<TextSpan> spans = truncatedWords.map((word) {
      if (regex.hasMatch(word)) {
        return TextSpan(
          text: "$word ",
          style: TextStyle(
            color: color ?? Colors.blue,
            fontWeight: FontWeight.bold,
            height: 1.4,
          ),
        );
      }
      return TextSpan(
        text: "$word ",
        style: textTheme.bodyMedium!.copyWith(height: 1.4, color: color),
      );
    }).toList();

    return TextSpan(
      children: [
        ...spans,
        if (textPainter.didExceedMaxLines)
          TextSpan(
            children: [
              TextSpan(
                text: '... ',
                style:
                    textTheme.bodyMedium!.copyWith(height: 1.4, color: color),
              ),
              TextSpan(
                text: 'Show more',
                style: textTheme.bodyMedium!
                    .copyWith(height: 1.4, color: color ?? Colors.blue),
              ),
            ],
          )
      ],
    );
  }
}
