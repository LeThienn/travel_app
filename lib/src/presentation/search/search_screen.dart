import 'package:flutter/material.dart';
import 'package:travel_app/src/presentation/list_view/listview_horizontal_travel.dart';
import 'package:travel_app/src/presentation/list_view/listview_vertical_travel.dart';
import 'package:travel_app/src/presentation/search/component/widget_search_travel.dart';
import 'package:travel_app/src/presentation/search/component/widget_text_search.dart';

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
      padding: const EdgeInsets.all(10),
      child: Container(
          color: Colors.grey.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.03),
                    child: _buildSearchTitle(),
                  ),
                  SizedBox(
                    height: size.height * 0.015,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 0.03, right: size.width * 0.03),
                    child: _buildSearch(),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: size.height * 0.01),
                        child: Text(
                          "For you",
                          style: TextStyle(
                              fontSize: size.height * 0.025,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.01,),
              Expanded(
                flex: 1,
                child: _buildListHorizontal(),
              ),
              SizedBox(height: size.height * 0.012,),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: size.height * 0.01),
                    child: Text(
                      "Popular",
                      style: TextStyle(
                          fontSize: size.height * 0.025,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.015,
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
  return SearchTravelWidget();
}

Widget _buildListHorizontal() {
  return ListViewHorizoltalTravel();
}

Widget _buildListVertivalTravel() {
  return ListViewVerticalTravel();
}
