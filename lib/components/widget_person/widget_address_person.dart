import 'package:flutter/material.dart';

class AddressPersonWidget extends StatelessWidget {
  const AddressPersonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Text("Đống Đa, Hà Nội"),
      ),
    );
  }
}
