import 'package:flutter/material.dart';

class InfoPersonWidget extends StatefulWidget {
  const InfoPersonWidget({Key? key}) : super(key: key);

  @override
  _InfoPersonWidgetState createState() => _InfoPersonWidgetState();
}

class _InfoPersonWidgetState extends State<InfoPersonWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Row(
            children: [
              Container(
                child: Row(
                  children: const [
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.airplane_ticket_rounded),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      flex: 4,
                      child: Text(
                        "My Tickets",
                        style: TextStyle(
                            fontSize: 17,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_forward),
                    )
                  ],
                ),
                height: 40,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
              ),
            ],
          ),
        )
      ],
    );
  }
}
