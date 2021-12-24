import 'package:flutter/material.dart';
import 'package:travel_app/src/components/widget_search/list/card/card_travel.dart';

class ListViewHorizontalTravel extends StatefulWidget {
  const ListViewHorizontalTravel({Key? key}) : super(key: key);

  @override
  _ListViewHorizontalTravelState createState() =>
      _ListViewHorizontalTravelState();
}

class _ListViewHorizontalTravelState extends State<ListViewHorizontalTravel> {
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
      height: 300, // chieu dai cua tung card
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildCardTravel(),
          const SizedBox(
            width: 20,
          ),
          _buildCardTravel(),
          const SizedBox(
            width: 20,
          ),
          _buildCardTravel(),
           const SizedBox(
            width: 20,
          ),
          _buildCardTravel(),
           const SizedBox(
            width: 20,
          ),
          _buildCardTravel(),
           const SizedBox(
            width: 20,
          ),
          _buildCardTravel()
        ],
      ),
    );
  }
}

Widget _buildCardTravel() {
  return const CardTravel();
}
