import 'package:flutter/material.dart';
import 'package:travel_app/src/resource/model/travel.dart';

class ListViewHorizontalTravel extends StatefulWidget {
  const ListViewHorizontalTravel({Key? key}) : super(key: key);

  @override
  _ListViewHorizontalTravelState createState() =>
      _ListViewHorizontalTravelState();
}

class _ListViewHorizontalTravelState extends State<ListViewHorizontalTravel> {
  final List<Travel> travel = [
    Travel(name: "Lighthouse", location: "Edinburgh"),
    Travel(name: "Eiffel tower", location: "Paris"),
    Travel(name: "Big Ben", location: "London"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: travel.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.only(left: 15, top: 15),
            height: 300, // chieu dai cua tung card
            child: SizedBox(
                width: 170.0,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            color: Colors.blue),
                      ),
                    ),
                    Expanded(
                      flex: 2,
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
                )),
          );
        });
    // );
  }
}
