import 'package:flutter/material.dart';

class AddressProfileWidget extends StatelessWidget {
  const AddressProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 45,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          color: Colors.white),
      child: Row(
        children: const [
          SizedBox(
            width: 13,
          ),
          Center(
            child: Icon(Icons.location_on, color: Colors.blue,),
          ),
          SizedBox(
            width: 10,
          ),
          Text("Đống Đa, Hà Nội", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),)
        ],
      ),
    );
  }
}
