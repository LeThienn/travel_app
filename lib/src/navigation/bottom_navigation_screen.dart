import 'package:flutter/material.dart';
import 'package:travel_app/src/presentation/favorite/favorite_screen.dart';
import 'package:travel_app/src/presentation/profile/profile_screen.dart';
import 'package:travel_app/src/presentation/search/search_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedIndex = 0;
  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
    //duration: const Duration(milliseconds: 900), curve: Curves.fastLinearToSlowEaseIn
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          Container(
            child: FavoriteScreen(),
          ),
          Container(
            child: SearchScreen(),
          ),
          Container(),
          Container(
            child: ProfileScreen(),
          )
        ],
        onPageChanged: (pageIndex) {
          setState(() {
            _selectedIndex = pageIndex;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: ''),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          
          onTap: onTapped),
    );
  }
}
