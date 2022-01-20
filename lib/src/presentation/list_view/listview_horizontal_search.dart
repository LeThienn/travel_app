import 'package:flutter/material.dart';

import 'package:travel_app/src/resource/model/foryou_travel.dart';

class ListViewHorizoltalTravel extends StatelessWidget {
  ListViewHorizoltalTravel({Key? key}) : super(key: key);

  final List<ForYouTravel> travelForYou = [
    ForYouTravel(
        nameForYou: "Lighthouse",
        locationForYou: "Edinburgh",
        imageForYou:
            "https://images.unsplash.com/photo-1522679056866-8dbbc8774a9d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80"),
    ForYouTravel(
        nameForYou: "Eiffel tower",
        locationForYou: "Paris",
        imageForYou:
            "https://www.grunge.com/img/gallery/the-bizarre-history-of-the-eiffel-tower/intro-1602781703.jpg"),
    ForYouTravel(
        nameForYou: "Big Ben",
        locationForYou: "London",
        imageForYou:
            "https://megastudy.edu.vn/upload/tinymce/thap-dong-ho-big-ben-9-1024x683.jpg"),
    ForYouTravel(
        nameForYou: "Hội An",
        locationForYou: "Hà Nội",
        imageForYou:
            "https://dulichkhampha24.com/wp-content/uploads/2021/03/hoi-an-thanh-pho-lang-man-nhat-the-gioi.jpg"),
    ForYouTravel(
        nameForYou: "Vịnh Hạ Long",
        locationForYou: "Quảng Ninh",
        imageForYou:
            "https://vietnamembassy-turkey.org/wp-content/uploads/2019/12/V%E1%BB%8Bnh-H%E1%BA%A1-Long.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    // Padding padding = MediaQuery.of(context).padding.bottom as Padding;
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: travelForYou.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext contFext, int index) {
          return Container(
            padding: EdgeInsets.only(top: size.height * 0.02),
            child: Column(
              children: [
                Container(
                  height: size.height * 0.2,
                  width: size.height * 0.2, // những lúc nào thì dùng 
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                    image: DecorationImage(
                      image: NetworkImage(travelForYou[index].imageForYou),
                      fit: BoxFit.cover,
                    ),
                    // shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: size.height * 0.21,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: size.width * 0.03,
                            height: size.width * 0.075,
                          ),
                          Text(
                            travelForYou[index].nameForYou,
                            style: TextStyle(
                                fontSize: size.height * 0.022,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),  
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: size.width * 0.019,
                          ),
                          Icon(
                            Icons.location_on,
                            color: Colors.blue,
                            size: size.height * 0.026,
                          ),
                          Text(
                            travelForYou[index].locationForYou,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
