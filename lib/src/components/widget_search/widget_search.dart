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
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0) // circular dạng hình tròn
          ),
      child: Row(
        children: const [
          SizedBox(
            width: 20,
          ),
          Icon(Icons.search),
          Expanded(
              flex: 1,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Where do you want to go?",
                    border: InputBorder.none, // mấy dòng nhập
                    contentPadding: EdgeInsets.only(left: 20.0)),
              )),
          // expanded chia bố cục
        ],
      ),
    );
  }
}
