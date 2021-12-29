import 'package:flutter/material.dart';

class InfoProfileWidget extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const InfoProfileWidget({
    required this.iconData,
    required this.name,
  });
  final IconData iconData;
  final String name;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: size.width * 0.02, top: size.height * 0.013, right: size.width * 0.02),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(
                        iconData,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(width: size.width * 0.02),
                    Expanded(
                      flex: 4,
                      child: Text(
                        name,
                        style: TextStyle(
                            fontSize: size.height * 0.022,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Expanded(
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                height: size.height * 0.06,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
              ),
            ],
          ),
        )
      ],
    );
    ;
  }
}
