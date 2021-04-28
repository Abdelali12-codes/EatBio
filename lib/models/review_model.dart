class ReviewModel {
  final String username;
  final double rating;
  final DateTime createdAt;
  final String userImage;
  final String description;

  ReviewModel({
    this.username,
    this.rating,
    this.createdAt,
    this.userImage,
    this.description,
  });
}

List<ReviewModel> allReviewList = [
  ReviewModel(
    username: 'Manal Benchrif',
    rating: 5.0,
    createdAt: DateTime.now(),
    description: 'That plates was so amazing',
    userImage: 'assets/avatars/manal.jpeg',
  ),
  ReviewModel(
    username: 'Abdelali Jadelmoul',
    rating: 4.0,
    createdAt: DateTime.now(),
    description:
        'I liked what she does, and i suggest any one to have cook from her',
    userImage: 'assets/avatars/abdelali.jpg',
  ),
  ReviewModel(
    username: 'Ismail Ismaili',
    rating: 3.0,
    createdAt: DateTime.now(),
    description: 'That is soo delecious',
    userImage: 'assets/avatars/ismail.jpeg',
  ),
  ReviewModel(
    username: 'Ismail Bouham',
    rating: 2.0,
    createdAt: DateTime.now(),
    description: 'great service and delecious recips',
    userImage: 'assets/avatars/bouham2.jpeg',
  ),
];
