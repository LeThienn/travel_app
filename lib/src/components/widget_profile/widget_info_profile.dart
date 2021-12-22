import 'package:flutter/material.dart';

class InfoProfileWidget extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const InfoProfileWidget({
    required this.iconData,
    required this.name,
  });
  final IconData iconData;
  final String name;

  @override
  _InfoProfileWidgetState createState() => _InfoProfileWidgetState();
}

class _InfoProfileWidgetState extends State<InfoProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(
                        widget.iconData,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      flex: 4,
                      child: Text(
                        widget.name,
                        style: const TextStyle(
                            fontSize: 17,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Expanded(
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                height: 40,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
              ),
              const SizedBox(
                height: 7,
              ),
              const Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey,
                  indent: 72,
                  endIndent: 28),
            ],
          ),
        )
      ],
    );
  }
}
