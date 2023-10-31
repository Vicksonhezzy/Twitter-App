import 'package:flutter/material.dart';
import 'package:twitter/core/utils/size_utils.dart';

class TweetScreen extends StatelessWidget {
  const TweetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: getPadding(top: 20),
          child: Column(),
        ),
      ),
    );
  }
}
