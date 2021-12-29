import 'package:flutter/material.dart';

class SearchTravelWidget extends StatefulWidget {
  SearchTravelWidget({Key? key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchTravelWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.06,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0) // circular dạng hình tròn
          ),
      child: Row(
        children: [
          SizedBox(
            width: size.width * 0.05,
          ),
          const Icon(Icons.search),
          Expanded(
              flex: 1,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Where do you want to go?",
                    border: InputBorder.none, // mấy dòng nhập
                    contentPadding: EdgeInsets.only(left: size.height * 0.03)),
              )),
          // expanded chia bố cục
        ],
      ),
    );
  }
}
