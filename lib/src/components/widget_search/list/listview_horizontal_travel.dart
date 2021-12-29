import 'package:flutter/material.dart';

import 'package:travel_app/src/resource/model/foryou_travel.dart';

class ListViewHorizoltalTravel extends StatelessWidget {
  ListViewHorizoltalTravel({Key? key}) : super(key: key);

  final List<Travel> travel = [
    Travel(
        name: "Lighthouse",
        location: "Edinburgh",
        image:
            "https://images.unsplash.com/photo-1522679056866-8dbbc8774a9d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80"),
    Travel(
        name: "Eiffel tower",
        location: "Paris",
        image:
            "https://www.grunge.com/img/gallery/the-bizarre-history-of-the-eiffel-tower/intro-1602781703.jpg"),
    Travel(
        name: "Big Ben",
        location: "London",
        image:
            "https://megastudy.edu.vn/upload/tinymce/thap-dong-ho-big-ben-9-1024x683.jpg"),
    Travel(
        name: "Hội An",
        location: "Hà Nội",
        image:
            "https://dulichkhampha24.com/wp-content/uploads/2021/03/hoi-an-thanh-pho-lang-man-nhat-the-gioi.jpg"),
    Travel(
        name: "Vịnh Hạ Long",
        location: "Quảng Ninh",
        image:
            "http://baochinhphu.vn/Uploaded/duongphuonglien/2020_07_06/ha%20long.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    // Padding padding = MediaQuery.of(context).padding.bottom as Padding;
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: travel.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext contFext, int index) {
          return Container(
            padding: const EdgeInsets.only(left: 8, top: 15, right: 8),
            child: Column(
              children: [
                Container(
                  height: 150.0,
                  width: 160.0,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                    image: DecorationImage(
                      image: NetworkImage(travel[index].image),
                      fit: BoxFit.cover,
                    ),
                    // shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 160, // fix chữ hỏi ??????
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                            height: 35,
                          ),
                          Text(
                            travel[index].name,
                            style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 7,
                          ),
                          const Icon(
                            Icons.location_on,
                            color: Colors.blue,
                          ),
                          Text(
                            travel[index].location,
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
