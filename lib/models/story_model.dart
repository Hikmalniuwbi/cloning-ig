import 'package:clone_ig/models/user_model.dart';

class Story {
  final User users;
  final String imageUrl;
  final bool isViewe;

  Story({
    required this.users,
    required this.imageUrl,
    required this.isViewe,
  });
}
