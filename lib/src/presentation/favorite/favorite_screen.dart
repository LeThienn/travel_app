import 'package:flutter/material.dart';

import 'package:travel_app/src/presentation/favorite/component/widget_text_favorite.dart';
import 'package:travel_app/src/tabbar/tabbar_fav.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        color: Colors.grey.shade100,
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.height * 0.02),
                  child: _buildFavoriteText(),
                ),
                _buildTabBar()
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildFavoriteText() {
  return const FavoriteTextWidget();
}

Widget _buildTabBar(){
  return const TabbarFavWidget();
}
