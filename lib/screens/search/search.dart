import 'package:flutter/material.dart';
import 'package:twitter/core/utils/size_utils.dart';
import 'package:twitter/screens/search/widgets/trend_empty_widget.dart';
import 'package:twitter/themes/text_style.dart';
import 'package:twitter/widgets/app_bar.dart';
import 'package:twitter/widgets/custom_divider.dart';
import 'package:twitter/widgets/custom_search_bar.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final brightness = Theme.of(context).brightness;
    bool isDark = brightness == Brightness.dark;
    return SafeArea(
      child: Scaffold(
        backgroundColor:
            isDark ? null : AppTextSTyle.textStyle1.color!.withOpacity(0.15),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 100,
              centerTitle: true,
              automaticallyImplyLeading: false,
              titleSpacing: 0,
              elevation: 0,
              toolbarHeight: 70,
              // bottom: const CustomAppBarDivider(),
              title: const CustomAppBar(title: CustomSearchBar()),
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: getPadding(left: 20),
                title: Text(
                  "Trends for you",
                  style: textTheme.bodyLarge!
                      .copyWith(fontWeight: FontWeight.w900),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [const TrendEmpty()],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomAppBarDivider extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10),
      child: CustomDivider(),
    );
  }

  @override
  Size get preferredSize => Size(size.width, 5);
}
