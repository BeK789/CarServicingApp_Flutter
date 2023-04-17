class AddBanner {
  final int id;
  String title;
  String thumbnailUrl;

  AddBanner(
      {required this.id, required this.title, required this.thumbnailUrl});
}

List<AddBanner> addBannerList = [
  AddBanner(
      id: 1,
      title: 'Title',
      thumbnailUrl:
          'https://www.shutterstock.com/image-vector/black-friday-super-sale-realistic-600w-1841495770.jpg'),
  AddBanner(
      id: 1,
      title: 'Title',
      thumbnailUrl:
          'https://www.shutterstock.com/image-photo/front-car-motion-lighting-background-600w-1973046125.jpg'),
];
