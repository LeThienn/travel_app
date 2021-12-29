import 'dart:async';
import 'package:flutter/material.dart';
import 'package:travel_app/src/navigation/bottom_navigation_screen.dart';
import 'package:travel_app/src/presentation/onboarding/component/widget_text_onboarding.dart';

import 'package:travel_app/src/resource/model/onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<OnBoarding> onBoarding = [
    OnBoarding(image: 'assets/images/5.png'),
    OnBoarding(image: 'assets/images/6.png'),
    OnBoarding(image: 'assets/images/5.png')
  ];
  int curenPage = 0;
  var pageviewController = PageController(initialPage: 0);
  // sẽ chạy hàm init đầu tiên 
  @override
  void initState() {
    super.initState();
    autoNextPage();
  }
  // tự động chuyển page
  autoNextPage() {
    Timer.periodic(const Duration(seconds: 5), (callback) {
      if (curenPage < onBoarding.length - 1) {
        setState(() {
          curenPage += 1;
          if (curenPage == onBoarding.length - 1) {
            Future.delayed(const Duration(seconds: 4), () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const BottomNavigationScreen()));
            });
          }
        });
        pageviewController.animateToPage(curenPage,
            duration: const Duration(milliseconds: 300), curve: Curves.easeIn,);
      }
    });
  }

  onPageChang(int index) {
    setState(() {
      curenPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          onPageChanged: (index) => onPageChang(index),
          controller: pageviewController,
          scrollDirection: Axis.vertical,
          itemCount: onBoarding.length,
          itemBuilder: (_, index) {
            return Container(
              color: const Color(0xFF98e2f3),
              child: Container(
                margin: const EdgeInsets.only(top: 75, left: 20, right: 20),
                child: Column(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                WidgetTextOnboarding(
                                  size: 40,
                                  name: 'Enjoy',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                WidgetTextOnboarding(
                                  size: 40,
                                  name: 'the world!',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white70,
                                ),
                                SizedBox(
                                  width: 300,
                                  child: WidgetTextOnboarding(
                                    size: 20,
                                    name:
                                        'Our travel agents are experts at handcrafting and coordinating complex itnieraries around the world!',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: List.generate(3, (indexList) {
                                return Container(
                                  margin: const EdgeInsets.only(bottom: 2),
                                  width: 6,
                                  height: index == indexList ? 18 : 8,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: index == indexList
                                          ? Colors.black
                                          : Colors.white),
                                );
                              }),
                            )
                          ],
                        )),
                    Expanded(
                        flex: 2, child: Image.asset(onBoarding[index].image)),
                  ],
                ),
              ),
            );
          }),
    );
  }
}