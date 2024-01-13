import 'package:dummy_template/values/images.dart';

class OnBoardingContent {
  String image;
  String title;
  String discripton;

  OnBoardingContent({
    required this.image,
    required this.title,
    required this.discripton,
  });
}

List<OnBoardingContent> contents = [
  OnBoardingContent(
    image: Images.onboarding1,
    title: "Track your daily water\nintake with Us",
    discripton: "Achieve your hydration goals with a simple\ntap!",
  ),
  OnBoardingContent(
    image: Images.onboarding2,
    title: "Smart Reminders\nTailored to You",
    discripton:
        "Quick and easy to set your hydration goal &\nthen track your daily water intake progress.",
  ),
  OnBoardingContent(
    image: Images.onboarding3,
    title: "Easy to Use - Drink, Tap,\nRepeat",
    discripton: "Staying hydrated every day is easy with\nDrops Water Tracker.",
  ),
];
