import 'package:flutter/material.dart';
import 'package:travel_app/src/components/widget_search/list/listview_horizontal_travel.dart';
import 'package:travel_app/src/components/widget_search/list/listview_vertical_travel.dart';
import 'package:travel_app/src/components/widget_search/widget_search_travel.dart';
import 'package:travel_app/src/components/widget_search/widget_title_search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
          color: Colors.grey.shade100,
          child: Column(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: _buildSearchTitle(),
                  ),
                  SizedBox(
                    height: size.height * 0.015,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 7, right: 7),
                    child: _buildSearch(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 7),
                        child: Text(
                          "For you",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                flex: 1, // ??
                child: _buildListHorizontal(),
              ),
              
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 7,
                    ),
                    child: Text(
                      "Popular",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Expanded(
                flex: 1,
                child: _buildListVertivalTravel(),
              )
            ],
          )),
    );
  }
}

Widget _buildSearchTitle() {
  return const SearchTextWidget();
}

Widget _buildSearch() {
  return SearchWidget();
}

Widget _buildListHorizontal() {
  return ListViewHorizoltalTravel();
}

Widget _buildListVertivalTravel() {
  return ListViewVerticalTravel();
}
