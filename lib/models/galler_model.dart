class GalleryModel {
  final int id;
  final String description;
  final String thumbnail;
  final String file;
  bool isLiked;
  bool isImage;

  GalleryModel(
      {this.id,
      this.description,
      this.file,
      this.isImage,
      this.isLiked,
      this.thumbnail});
}

List<GalleryModel> allGalleryList = [
  GalleryModel(
    id: 1,
    description:
        'quia et suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto',
    file: 'assets/food/harira.jpeg',
    thumbnail: 'assets/food/harira.jpeg',
    isImage: true,
    isLiked: false,
  ),
  // GalleryModel(
  //   id: 1,
  //   description:
  //       'quia et suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto',
  //   file: 'assets/videos/video1.mp4',
  //   thumbnail: 'assets/images/other/thumbnail1.jpg',
  //   isImage: false,
  //   isLiked: false,
  // ),
  GalleryModel(
    id: 1,
    description:
        'quia et suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto',
    file: 'assets/food/couscous.jpeg',
    thumbnail: 'assets/food/couscous.jpeg',
    isImage: true,
    isLiked: false,
  ),
  GalleryModel(
    id: 1,
    description:
        'quia et suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto',
    file: 'assets/food/plate.jpeg',
    thumbnail: 'assets/food/plate.jpeg',
    isImage: true,
    isLiked: false,
  ),
  GalleryModel(
    id: 1,
    description:
        'quia et suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto',
    file: 'assets/food/ftour.jpeg',
    thumbnail: 'assets/food/ftour.jpeg',
    isImage: true,
    isLiked: false,
  ),
  GalleryModel(
    id: 1,
    description:
        'quia et suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto',
    file: 'assets/food/tajine.jpeg',
    thumbnail: 'assets/food/tajine.jpeg',
    isImage: true,
    isLiked: false,
  ),
];
