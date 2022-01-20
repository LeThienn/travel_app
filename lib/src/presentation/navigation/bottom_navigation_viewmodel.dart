import 'package:flutter/material.dart';
import 'package:travel_app/src/presentation/base/base.dart';

class BottomNavigationViewModel extends BaseViewModel {
  init() async {}
  int selectedIndex = 0;
  PageController pageController = PageController();

  void onTapped(int index) {
    selectedIndex = index;
    pageController.jumpToPage(index);
    //duration: const Duration(milliseconds: 900), curve: Curves.fastLinearToSlowEaseIn
  }

  void onPageChanged(pageIndex) {
    selectedIndex = pageIndex;
  }
}
