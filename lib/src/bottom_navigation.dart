import 'package:flutter/material.dart';
import 'package:travel_app/src/page/profile.dart';
import 'package:travel_app/src/page/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          Container(),
          Container(
            child: Search(),
          ),
          Container(),
          Container(
            child: Profile(),
          )
        ],
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
