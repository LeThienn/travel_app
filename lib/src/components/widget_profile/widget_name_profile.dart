import 'package:flutter/material.dart';

class NameProfileWidget extends StatelessWidget {
  const NameProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          "Lê Đức Thiện",
          style: TextStyle(
              fontStyle: FontStyle.normal,
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
