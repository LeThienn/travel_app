import 'package:flutter/material.dart';
import 'package:travel_app/src/presentation/base/base.dart';
import 'package:travel_app/src/presentation/favorite/favorite_screen.dart';
import 'package:travel_app/src/presentation/profile/profile_screen.dart';
import 'package:travel_app/src/presentation/search/search_screen.dart';

import 'bottom_navigation.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  // ignore: unused_field
  BottomNavigationViewModel? _viewModel;

  @override
  Widget build(BuildContext context) {
    return BaseWidget<BottomNavigationViewModel>(
      onViewModelReady: (viewModel) {
        _viewModel = viewModel?..init();
      },
      viewModel: BottomNavigationViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: PageView(
            controller: viewModel.pageController,
            children: const [SearchScreen(), FavoriteScreen(), ProfileScreen()],
            onPageChanged: viewModel.onPageChanged,
          ),
          bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.bookmark_outline), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings_outlined), label: ''),
              ],
              currentIndex: viewModel.selectedIndex,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.black,
              onTap: viewModel.onTapped),
        );
      },
    );
  }
}
