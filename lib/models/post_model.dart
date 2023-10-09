import 'package:clone_ig/models/model.dart';

class Posts {
  final User users;
  final String caption;
  final String timeAgo;
  final String imageUrl;
  final int likes;
  final int comments;
  final int shares;

  Posts(
      {required this.users,
      required this.caption,
      required this.timeAgo,
      required this.imageUrl,
      required this.likes,
      required this.comments,
      required this.shares});
}
