import 'package:flutter/material.dart';
import 'package:travel_app/src/resource/model/popular_travel.dart';

class ListViewVerticalTravel extends StatelessWidget {
  ListViewVerticalTravel({Key? key}) : super(key: key);

  final List<PopularTravel> popularTravel = [
    PopularTravel(
        namePopular: "European Tour",
        timePopular: "14 April - 25 April 2021",
        imagePopular:
            "https://images.unsplash.com/photo-1522679056866-8dbbc8774a9d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80"),
    PopularTravel(
        namePopular: "Castles of Europe",
        timePopular: "16 may - 19 may 2021",
        imagePopular:
            "https://www.grunge.com/img/gallery/the-bizarre-history-of-the-eiffel-tower/intro-1602781703.jpg"),
    PopularTravel(
        namePopular: "Big Ben",
        timePopular: "24 April - 29 April",
        imagePopular:
            "https://megastudy.edu.vn/upload/tinymce/thap-dong-ho-big-ben-9-1024x683.jpg"),
    PopularTravel(
        namePopular: "Hội An",
        timePopular: "14 April - 25 April",
        imagePopular:
            "https://dulichkhampha24.com/wp-content/uploads/2021/03/hoi-an-thanh-pho-lang-man-nhat-the-gioi.jpg"),
    PopularTravel(
        namePopular: "Vịnh Hạ Long",
        timePopular: "14 April - 25 April",
        imagePopular:
            "http://baochinhphu.vn/Uploaded/duongphuonglien/2020_07_06/ha%20long.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    // Padding padding = MediaQuery.of(context).padding.bottom as Padding;
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: popularTravel.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext contFext, int index) {
          return Container(
            padding: const EdgeInsets.only(left: 8, top: 10, right: 8),
            child: Column(
              children: [
                Container(
                  height: 90,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 9,
                      ),
                      Container(
                        height: 77.0,
                        width: 77.0,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12.0)),
                          image: DecorationImage(
                            image: NetworkImage(
                                popularTravel[index].imagePopular),
                            fit: BoxFit.cover,
                          ),
                          // shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        // cai nay la nhu nao
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 30),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    height: 35,
                                  ),
                                  Text(
                                    popularTravel[index].namePopular,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, top: 4),
                              child: Row(
                                children: [
                                  Text(
                                    popularTravel[index].timePopular,
                                    style: const TextStyle(
                                        fontSize: 15.8,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
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
