import 'package:flutter/material.dart';

class AddressProfileWidget extends StatelessWidget {
  const AddressProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.46,
      height: size.height * 0.06,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          color: Colors.white),
      child: Row(
        children:  [
          SizedBox(
            width: size.width * 0.04,
          ),
          const Center(
            child: Icon(Icons.location_on, color: Colors.blue,),
          ),
          SizedBox(
            width: size.width * 0.02,
          ),
          Text("Đống Đa, Hà Nội", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: size.height * 0.02),)
        ],
      ),
    );
  }
}
