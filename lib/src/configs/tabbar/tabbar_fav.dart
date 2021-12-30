import 'package:flutter/material.dart';
import 'package:travel_app/src/presentation/list_view/listview_fav.dart';
import 'package:travel_app/src/resource/model/fav_travel.dart';
import 'package:travel_app/src/resource/model/popular_travel.dart';

// class TabbarFavWidget extends sta {
//   const TabbarFavWidget({Key? key}) : super(key: key);

class TabbarFavWidget extends StatefulWidget {
  TabbarFavWidget({Key? key}) : super(key: key);

  @override
  _TabbarFavWidgetState createState() => _TabbarFavWidgetState();
}

class _TabbarFavWidgetState extends State<TabbarFavWidget>
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
          margin: const EdgeInsets.only(top: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              controller: _tabController,
              labelPadding: const EdgeInsets.only(left: 20, right: 10),
              labelColor: Colors.blue,
              isScrollable: true,
              unselectedLabelColor: Colors.black,
              unselectedLabelStyle:
                  const TextStyle(fontStyle: FontStyle.normal),
              labelStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 480,
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

// ignore: must_be_immutable
class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final double radius;
  late Color color;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    late Paint _paint;
    _paint = Paint()..color = color;
    _paint = _paint..isAntiAlias = true;
    final Offset circleOffset =
        Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
