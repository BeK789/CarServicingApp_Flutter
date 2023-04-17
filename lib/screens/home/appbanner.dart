import 'package:flutter/material.dart';

class AppBanner {
  final int id;
  String title;
  String thumbnailUrl;

  AppBanner(
      {required this.id, required this.title, required this.thumbnailUrl});
}

List<AppBanner> appBannerList = [
  AppBanner(
      id: 1,
      title: 'Title',
      thumbnailUrl:
          'https://cdnb.artstation.com/p/assets/images/images/031/589/939/large/arif-rahman-syix-357.jpg?1604046816'),
  AppBanner(
      id: 1,
      title: 'Title',
      thumbnailUrl:
          'https://cdnb.artstation.com/p/assets/images/images/031/589/939/large/arif-rahman-syix-357.jpg?1604046816'),
  AppBanner(
      id: 1,
      title: 'Title',
      thumbnailUrl:
          'https://cdnb.artstation.com/p/assets/images/images/031/589/939/large/arif-rahman-syix-357.jpg?1604046816'),
  AppBanner(
      id: 1,
      title: 'Title',
      thumbnailUrl:
          'https://cdnb.artstation.com/p/assets/images/images/031/589/939/large/arif-rahman-syix-357.jpg?1604046816'),
];
