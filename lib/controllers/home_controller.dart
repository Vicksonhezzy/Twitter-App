import 'package:get/get.dart';
import 'package:twitter/core/app_decoration/app_images.dart';
import 'package:twitter/models/tweet_model.dart';

class HomeController extends GetxController {
  List<TweetModel> tweet = [
    ...List.generate(
      6,
      (index) => TweetModel(
        text:
            "UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. What do you bring? #TellMeAboutYou",
        comments: 28,
        feedType: FeedType.like,
        userImage: ImageConstants.userImage,
        name: "Martha Craig",
        handle: "@craig_love ·12h",
        time: ".12h",
        reTweets: 5,
        likes: 21,
        isThread: true,
        isFeed: true,
        verified: false,
      ),
    ),
    ...List.generate(
      5,
      (index) => TweetModel(
        text:
            "UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. What do you bring? #TellMeAboutYou",
        comments: 28,
        feedType: FeedType.like,
        userImage: ImageConstants.userImage,
        name: "Martha Craig",
        handle: "@craig_love ·12h",
        time: ".12h",
        reTweets: 5,
        likes: 21,
        isThread: false,
        isFeed: true,
        verified: false,
      ),
    ),
  ];
}
