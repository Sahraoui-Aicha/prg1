import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sahf/screen/home_screen2.dart';

class OnBoardingController extends GetxController {

  static OnBoardingController get instance => Get.find();
  final pageController = PageController();

  Rx<int> currentPageIndex = 0.obs;
  void updatePageIndicator(index) => currentPageIndex.value = index;

  void doNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 1) {
      Get.to(HomePage());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    currentPageIndex.value = 1;
    pageController.jumpToPage(1);
  }
}
