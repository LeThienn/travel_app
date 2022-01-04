import 'package:flutter/material.dart';
import 'package:travel_app/src/resource/model/favorite_travel.dart';

class ListViewFav extends StatelessWidget {
  ListViewFav({Key? key}) : super(key: key);

  final List<FavoriteTravel> favTravel = [
    FavoriteTravel(
        nameFav: "European Tour",
        timeFav: "14 April - 25 April 2021",
        imageFav:
            "https://images.unsplash.com/photo-1522679056866-8dbbc8774a9d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80"),
    FavoriteTravel(
        nameFav: "Castles of Europe",
        timeFav: "16 may - 19 may 2021",
        imageFav:
            "https://www.grunge.com/img/gallery/the-bizarre-history-of-the-eiffel-tower/intro-1602781703.jpg"),
    FavoriteTravel(
        nameFav: "Big Ben",
        timeFav: "24 April - 29 April",
        imageFav:
            "https://megastudy.edu.vn/upload/tinymce/thap-dong-ho-big-ben-9-1024x683.jpg"),
    FavoriteTravel(
        nameFav: "Hội An",
        timeFav: "14 April - 25 April",
        imageFav:
            "https://dulichkhampha24.com/wp-content/uploads/2021/03/hoi-an-thanh-pho-lang-man-nhat-the-gioi.jpg"),
    FavoriteTravel(
        nameFav: "Vịnh Hạ Long",
        timeFav: "14 April - 25 April",
        imageFav:
            "http://baochinhphu.vn/Uploaded/duongphuonglien/2020_07_06/ha%20long.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: favTravel.length,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(top: size.height * 0.02),
            child: Column(
              children: [
                Container(
                  height: size.height * 0.4,
                  width: size.height * 0.46,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(17.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: size.height * 0.012),
                            height: size.height * 0.27,
                            width: size.height * 0.43,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(17.0)),
                              image: DecorationImage(
                                image: NetworkImage(favTravel[index].imageFav),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: size.height * 0.03,
                            left: size.height * 0.36,
                            child: Container(
                                height: size.height * 0.07,
                                width: size.width * 0.1,
                                decoration: const ShapeDecoration(
                                    shape: CircleBorder(
                                      side: BorderSide.none,
                                    ),
                                    color: Colors.white),
                                child: const Icon(Icons.bookmark_outline)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(left: size.height * 0.02, top: size.height * 0.027),
                                child: Row(
                                  children: [
                                    Text(
                                      favTravel[index].nameFav,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: size.height * 0.024,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: size.height * 0.02, top: size.height * 0.005),
                                child: Row(
                                  children: [
                                    Text(
                                      favTravel[index].timeFav,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: size.height * 0.021,
                                          fontWeight: FontWeight.normal),
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
        });
  }
}
