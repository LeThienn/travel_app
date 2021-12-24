import 'package:flutter/material.dart';

class CardTravel extends StatelessWidget {
  const CardTravel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 170.0,
        child: Column(
          children: [
            Expanded(
              flex: 1, // ??
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Colors.blue),
              ),
            ),
            Expanded(
              flex: 2, //??
              child: Column(
                children: [
                  Row(
                    children: const [
                      SizedBox(width: 10, height: 35,),
                      Text(
                        "Lighthouse",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      SizedBox(width: 7,),
                      Icon(Icons.location_on, color: Colors.blue,),
                      Text("Edinburgh", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),)
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
