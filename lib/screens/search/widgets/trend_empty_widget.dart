import 'package:flutter/material.dart';
import 'package:twitter/core/utils/size_utils.dart';
import 'package:twitter/themes/text_style.dart';
import 'package:twitter/widgets/custom_button.dart';

class TrendEmpty extends StatelessWidget {
  const TrendEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final Brightness brightness = Theme.of(context).brightness;
    final bool isDark = brightness == Brightness.dark;

    return Container(
      padding: getPadding(top: 20, bottom: 20, left: 25, right: 25),
      color: isDark ? null : Colors.white,
      child: Column(
        children: [
          Text(
            "No new trends for you ",
            style:
                textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 10),
          Text(
            "It seems like there’s not a lot to show you right now, but you can see trends for other areas",
            textAlign: TextAlign.center,
            style: AppTextSTyle.textStyle1.copyWith(fontSize: 15),
          ),
          const CustomButton(text: "Change location"),
        ],
      ),
    );
  }
}
