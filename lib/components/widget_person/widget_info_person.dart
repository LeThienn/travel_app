import 'package:flutter/material.dart';

class InfoPersonWidget extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const InfoPersonWidget();
  // final String name


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
          child: Column(
            children: [
              Container(
                child: Row(
                  children: const [
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.airplane_ticket_outlined, color: Colors.blue,),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      flex: 4,
                      child: Text(
                        "My tickets",
                        style: TextStyle(
                            fontSize: 17,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_forward, color: Colors.grey,),
                    )
                  ],
                ),
                height: 40,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
              ),
              const SizedBox(height: 10,),
              const Divider(height: 1, thickness: 1, color: Colors.grey,indent: 72,endIndent: 28),
              const SizedBox(height: 10,),
              // item 2
              Container(
                child: Row(
                  children: const [
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.person_outlined, color: Colors.blue,),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      flex: 4,
                      child: Text(
                        "Profile settings",
                        style: TextStyle(
                            fontSize: 17,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_forward, color: Colors.grey,),
                    )
                  ],
                ),
                height: 40,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
              ),
              const SizedBox(height: 10,),
              const Divider(height: 1, thickness: 1, color: Colors.grey,indent: 72,endIndent: 28),
              const SizedBox(height: 10,),
              // item 3
              Container(
                child: Row(
                  children: const [
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.payment_outlined, color: Colors.blue,),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      flex: 4,
                      child: Text(
                        "Payment",
                        style: TextStyle(
                            fontSize: 17,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_forward, color: Colors.grey,),
                    )
                  ],
                ),
                height: 40,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
              ),
              const SizedBox(height: 10,),
              const Divider(height: 1, thickness: 1, color: Colors.grey,indent: 72,endIndent: 28),
              const SizedBox(height: 10,),
              // item 4
              Container(
                child: Row(
                  children: const [
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.notifications_outlined, color: Colors.blue,),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      flex: 4,
                      child: Text(
                        "Notifications",
                        style: TextStyle(
                            fontSize: 17,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_forward, color: Colors.grey,),
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
