import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  SearchWidget({Key? key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
          color: const Color(0x55d2d2d2),
          borderRadius: BorderRadius.circular(30.0) // circular dạng hình tròn
          ),
      child: Row(
        children: const [
          Expanded(
              child: TextField(
            decoration: InputDecoration(
                hintText: "Search... ",
                border: InputBorder.none, // mấy dòng nhập
                contentPadding: EdgeInsets.only(left: 20.0)),
          )), // expanded chia bố cục
        ],
      ),
    );
  }
}
