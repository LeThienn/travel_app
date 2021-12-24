import 'package:flutter/material.dart';
import 'package:travel_app/src/components/widget_search/list/listview_horizontal.dart';
import 'package:travel_app/src/components/widget_search/widget_search.dart';
import 'package:travel_app/src/components/widget_search/widget_title_search.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey.shade100,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  _buildSearchTitle(),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: _buildSearch(),
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 18, left: 40),
                        child: Text(
                          "For you",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3, // ??
              child: _buildListHorizontal(),
            ),
           
          ],
        ));
  }
}

Widget _buildSearchTitle() {
  return const SearchTextWidget();
}

Widget _buildSearch() {
  return SearchWidget();
}

Widget _buildListHorizontal() {
  return const ListViewHorizontalTravel();
}
