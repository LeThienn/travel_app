import 'package:flutter/material.dart';
import 'package:travel_app/src/presentation/list_view/listview_fav.dart';
import 'component/circle_tab_indicator.dart';

class TabbarFavoriteWidget extends StatefulWidget {
  const TabbarFavoriteWidget({Key? key}) : super(key: key);

  @override
  _TabbarFavoriteWidgetState createState() => _TabbarFavoriteWidgetState();
}

class _TabbarFavoriteWidgetState extends State<TabbarFavoriteWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: size.height * 0.02),
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              controller: _tabController,
              labelPadding:
                  EdgeInsets.only(left: size.height * 0.03, right: size.height * 0.01),
              labelColor: Colors.blue,
              isScrollable: true,
              unselectedLabelColor: Colors.black,
              unselectedLabelStyle:
                  const TextStyle(fontStyle: FontStyle.normal),
              labelStyle:
                   TextStyle(fontSize: size.height * 0.025, fontWeight: FontWeight.bold),
              indicator: CircleTabIndicator(color: Colors.blue, radius: 4),
              tabs: const [
                Tab(
                  text: "Sights",
                ),
                Tab(
                  text: "Tours",
                ),
                Tab(
                  text: "Adventures",
                )
              ],
            ),
          ),
        ),
       SizedBox(
          height: size.height * 0.01,
        ),
        SizedBox(
          height: size.height * 0.68,
          child: TabBarView(
            controller: _tabController,
            children: [
              _buildListViewFav(),
              _buildListViewFav(),
              _buildListViewFav()
            ],
          ),
        )
      ],
    );
  }
}

Widget _buildListViewFav() {
  return ListViewFav();
}
