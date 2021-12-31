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
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: popularTravel.length,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext contFext, int index) {
          return Container(
            padding: EdgeInsets.only(
                left: size.height * 0.01,
                right: size.height * 0.01,
                top: size.height * 0.01),
            child: Column(
              children: [
                Container(
                  height: size.height * 0.12,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                      Container(
                        height: size.height * 0.1,
                        width: size.height * 0.1,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12.0)),
                          image: DecorationImage(
                            image:
                                NetworkImage(popularTravel[index].imagePopular),
                            fit: BoxFit.cover,
                          ),
                          // shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox( // nho cai nay
                        width: size.height * 0.3,
                        // cai nay la nhu nao
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: size.height * 0.025,
                                  left: size.width * 0.07),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: size.height * 0.04,
                                  ),
                                  Text(
                                    popularTravel[index].namePopular,
                                    style: TextStyle(
                                        fontSize: size.height * 0.024,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: size.width * 0.07,
                                  top: size.height * 0.003),
                              child: Row(
                                children: [
                                  Text(
                                    popularTravel[index].timePopular,
                                    style: TextStyle(
                                        fontSize: size.height * 0.019,
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
