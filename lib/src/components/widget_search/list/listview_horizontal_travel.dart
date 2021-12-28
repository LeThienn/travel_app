import 'package:flutter/material.dart';
import 'package:travel_app/src/resource/model/travel.dart';

class ListViewHorizoltalTravel extends StatelessWidget {
  ListViewHorizoltalTravel({Key? key}) : super(key: key);
  
  final List<Travel> travel = [
    Travel(name: "Lighthouse", location: "Edinburgh"),
    Travel(name: "Eiffel tower", location: "Paris"),
    Travel(name: "Big Ben", location: "London"),
    Travel(name: "Hội An", location: "Hà Nội"),
    Travel(name: "Vịnh Hạ Long", location: "Quảng Ninh"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: travel.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext contFext, int index) {
          return Container(
            padding: const EdgeInsets.only(left: 8, top: 15, right: 8),
            child: SizedBox(
                width: 150.0,
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Colors.blue),
                    ),
                    Column(
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
                  ],
                )),
          );
        });
  }
}
