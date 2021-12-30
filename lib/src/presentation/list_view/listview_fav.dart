import 'package:flutter/material.dart';
import 'package:travel_app/src/resource/model/fav_travel.dart';

class ListViewFav extends StatelessWidget {
  ListViewFav({Key? key}) : super(key: key);

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
    return ListView.builder(
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(17.0)),
                          image: DecorationImage(
                            image: NetworkImage(favTravel[index].imageFav),
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
                                padding:
                                    const EdgeInsets.only(left: 20, top: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      favTravel[index].nameFav,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                           
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      favTravel[index].timeFav,
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
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
