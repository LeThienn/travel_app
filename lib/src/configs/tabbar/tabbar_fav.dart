import 'package:flutter/material.dart';
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

  final List<FavTravel> favTravel = [
    FavTravel(
        nameFav: "European Tour",
        timeFav: "14 April - 25 April 2021",
        imageFav:
            "https://images.unsplash.com/photo-1522679056866-8dbbc8774a9d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80"),
    FavTravel(
        nameFav: "Castles of Europe",
        timeFav: "16 may - 19 may 2021",
        imageFav:
            "https://www.grunge.com/img/gallery/the-bizarre-history-of-the-eiffel-tower/intro-1602781703.jpg"),
    FavTravel(
        nameFav: "Big Ben",
        timeFav: "24 April - 29 April",
        imageFav:
            "https://megastudy.edu.vn/upload/tinymce/thap-dong-ho-big-ben-9-1024x683.jpg"),
    FavTravel(
        nameFav: "Hội An",
        timeFav: "14 April - 25 April",
        imageFav:
            "https://dulichkhampha24.com/wp-content/uploads/2021/03/hoi-an-thanh-pho-lang-man-nhat-the-gioi.jpg"),
    FavTravel(
        nameFav: "Vịnh Hạ Long",
        timeFav: "14 April - 25 April",
        imageFav:
            "http://baochinhphu.vn/Uploaded/duongphuonglien/2020_07_06/ha%20long.jpg"),
  ];

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
              // list 1
              ListView.builder(
                  itemCount: favTravel.length,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Container(
                            height: 290,
                            width: 340,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(17.0),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  height: 200,
                                  width: 320,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(17.0)),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          favTravel[index].imageFav),
                                      fit: BoxFit.cover,
                                    ),
                                    // shape: BoxShape.circle,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, top: 20),
                                          child: Row(
                                            children: [
                                              Text(
                                                favTravel[index].nameFav,
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, top: 5),
                                          child: Row(
                                            children: [
                                              Text(
                                                favTravel[index].timeFav,
                                                style: const TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
              // list 2
              ListView.builder(
                  itemCount: favTravel.length,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Container(
                            height: 290,
                            width: 340,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(17.0),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  height: 200,
                                  width: 320,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(17.0)),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          favTravel[index].imageFav),
                                      fit: BoxFit.cover,
                                    ),
                                    // shape: BoxShape.circle,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, top: 20),
                                          child: Row(
                                            children: [
                                              Text(favTravel[index].nameFav),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, top: 10),
                                          child: Row(
                                            children: [
                                              Text(favTravel[index].timeFav),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
              // list 3
              ListView.builder(
                  itemCount: favTravel.length,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Container(
                            height: 290,
                            width: 340,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(17.0),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  height: 200,
                                  width: 320,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(17.0)),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          favTravel[index].imageFav),
                                      fit: BoxFit.cover,
                                    ),
                                    // shape: BoxShape.circle,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, top: 20),
                                          child: Row(
                                            children: [
                                              Text(favTravel[index].nameFav),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, top: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                favTravel[index].timeFav,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ],
          ),
        )
      ],
    );
  }
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

  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    late Paint _paint;
    _paint = Paint()..color = color;
    _paint = _paint..isAntiAlias = true;
    final Offset circleOffset =
        Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
