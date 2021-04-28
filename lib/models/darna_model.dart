class DarnaModel {
  final int id;
  final String name;
  final String address;
  final double rating;
  final String image;
  final int totalReview;
  final bool isOpen;
  final String about;
//  final List<GalleryModel> gallery;
//  final List<ReviewModel> reviews;
//  final List<ProductModel> products;

  DarnaModel({
    this.id,
    this.name,
    this.address,
    this.rating,
    this.image,
    this.totalReview,
    this.isOpen,
    this.about,
//    this.gallery,
//    this.reviews,
//    this.products,
  });
}

List<DarnaModel> allSalonList = [
  DarnaModel(
    id: 1,
    name: 'Chef Meryem',
    address: '26260, Casablanca, Sebata, Jamila 7',
    rating: 4.3,
    image: 'assets/avatars/chef1.jpg',
    about:
        'bla bala bala bla bala bala bla bala bal aba balab bala bala bla bala bla bal bala bla bla bal',
    isOpen: true,
    totalReview: 25,
  ),
  DarnaModel(
    id: 2,
    name: 'Chef Halima',
    address: '26260, Casablanca, Sebata, Jamila 7',
    rating: 4.3,
    image: 'assets/avatars/chef2.jpg',
    about:
        'bla bala bala bla bala bala bla bala bal aba balab bala bala bla bala bla bal bala bla bla bal',
    isOpen: true,
    totalReview: 25,
  ),
  DarnaModel(
    id: 3,
    name: 'Chef Najwa',
    address: '26260, Casablanca, Sebata, Jamila 7',
    rating: 4.5,
    image: 'assets/avatars/chef3.jpg',
    about:
        'bla bala bala bla bala bala bla bala bal aba balab bala bala bla bala bla bal bala bla bla bal',
    isOpen: true,
    totalReview: 25,
  ),
  DarnaModel(
    id: 4,
    name: 'Chef Hasna',
    address: '26260, Casablanca, Sebata, Jamila 7',
    rating: 4.2,
    image: 'assets/avatars/chef2.jpg',
    about:
        'Incidunt cum tempora consectetur laborum consequatur laborum qui cupiditate deleniti. Placeat possimus amet aut aut hic non. Corporis qui mollitia delectus quos et magni. Nam fuga dolor eos totam vel hic. In consequuntur est accusamus qui.',
    isOpen: false,
    totalReview: 12,
  ),
  DarnaModel(
    id: 5,
    name: 'Chef Manal',
    address: '26260, Casablanca, Sebata, Jamila 7',
    rating: 4.3,
    image: 'assets/avatars/chef1.jpg',
    about:
        'bla bala bala bla bala bala bla bala bal aba balab bala bala bla bala bla bal bala bla bla bal',
    isOpen: true,
    totalReview: 25,
  ),
];
