import 'package:dalel/core/utils/app_assets.dart';

class OnBoardignModal {
  final String imagePath;
  final String title;
  final String subtitle;

  OnBoardignModal(
      {required this.imagePath, required this.title, required this.subtitle});
}

List<OnBoardignModal> OnBoardignData = [
  OnBoardignModal(
      imagePath: Assets.imagesOnbording1,
      title: "Explore The history with Dalel in a smart way",
      subtitle:
          "Using our app’s history libraries you can find many historical periods "),
  OnBoardignModal(
      imagePath: Assets.imagesOnbording2,
      title: "From every placeon earth",
      subtitle: "A big variety of ancient placesfrom all over the world"),
  OnBoardignModal(
      imagePath: Assets.imagesOnbording3,
      title: "Using modern AI technology for better user experience",
      subtitle:
          "AI provide recommendations and helps you to continue the search journey")
];
