List<String> profileImages = [
  "images/1.jpg",
  "images/2.jpg",
  "images/3.jpg",
  "images/4.jpg",
  "images/5.jpg",
  "images/6.jpg",
  "images/7.jpg",
  "images/8.jpg",
];
List<String> postImages = [
  "images/post_1.jpg",
  "images/post_2.jpg",
  "images/post_3.jpg",
  "images/post_4.jpg",
  "images/post_5.jpg",
  "images/post_6.jpg",
  "images/post_7.jpg",
  "images/post_8.jpg",
];

class Post {
  bool isLiked;
  bool isSaved;
  bool originalLiked;
  bool originalSaved;

  Post({
    required this.isLiked,
    required this.isSaved,
    required this.originalLiked,
    required this.originalSaved,
  });
}

final List<Post> postsButton = [
  Post(
      isLiked: false,
      isSaved: false,
      originalLiked: false,
      originalSaved: false), // Post 1
  Post(
      isLiked: false,
      isSaved: false,
      originalLiked: false,
      originalSaved: false), // Post 2
  Post(
      isLiked: false,
      isSaved: false,
      originalLiked: false,
      originalSaved: false), // Post 2
  Post(
      isLiked: false,
      isSaved: false,
      originalLiked: false,
      originalSaved: false), // Post 2
  Post(
      isLiked: false,
      isSaved: false,
      originalLiked: false,
      originalSaved: false), // Post 2
  Post(
      isLiked: false,
      isSaved: false,
      originalLiked: false,
      originalSaved: false), // Post 2
  Post(
      isLiked: false,
      isSaved: false,
      originalLiked: false,
      originalSaved: false), // Post 2
  Post(
      isLiked: false,
      isSaved: false,
      originalLiked: false,
      originalSaved: false), // Post 2
  // ...
];

void resetPostStatus(int index) {
  postsButton[index].isLiked = true;
  postsButton[index].isSaved = true;
}
