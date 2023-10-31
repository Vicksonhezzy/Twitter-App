class TweetModel {
  final String userImage;
  final String name;
  final String handle;
  final String time;
  final String text;
  final int comments;
  final int reTweets;
  final int likes;
  final bool isThread;
  final bool isFeed;
  final FeedType feedType;
  final bool verified;

  TweetModel({
    required this.text,
    required this.comments,
    required this.feedType,
    required this.userImage,
    required this.name,
    required this.handle,
    required this.time,
    required this.reTweets,
    required this.likes,
    required this.isThread,
    required this.isFeed,
    required this.verified,
  });
}

enum FeedType {
  reTweet,
  like,
  comment,
  follow,
}
