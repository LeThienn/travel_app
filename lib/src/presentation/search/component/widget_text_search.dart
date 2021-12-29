import 'package:flutter/material.dart';

class SearchTextWidget extends StatelessWidget {
  const SearchTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: size.height * 0.02),
              child: Text(
                "Search",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: size.height * 0.03,
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
