import 'package:flutter/material.dart';

class SearchTextWidget extends StatelessWidget {
  const SearchTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                "Search",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                    decoration: TextDecoration.none),
              ),
            )),
        Expanded(
          flex: 0,
          child: ElevatedButton(
            onPressed: () {},
            child: const Icon(
              Icons.slideshow_outlined,
              color: Colors.red,
            ),
            style: ButtonStyle(
                shape: MaterialStateProperty.all(const CircleBorder()),
                padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                backgroundColor: MaterialStateProperty.all(Colors.white)),
          ),
        ),
      ],
    );
  }
}
