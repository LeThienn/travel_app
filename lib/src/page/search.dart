import 'package:flutter/material.dart';
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
    return Column(
      children: [
        Expanded(
          flex: 2,
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
            ],
          ),
        )
      ],
    );
  }
}

Widget _buildSearchTitle() {
  return const SearchTextWidget();
}

Widget _buildSearch() {
  return SearchWidget();
}
