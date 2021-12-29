import 'package:flutter/material.dart';

class NameProfileWidget extends StatelessWidget {
  const NameProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          "Lê Đức Thiện",
          style: TextStyle(
              fontStyle: FontStyle.normal,
              color: Colors.black,
              fontSize:  size.height * 0.025,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
