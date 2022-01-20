import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidgetInput extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const WidgetInput(
      {required this.name, required this.obscureText, required this.iconData, required this.controller});
  final String name;
  final bool obscureText;
  final IconData iconData;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 18,
      shadowColor: Colors.grey.shade50,
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
      child: TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(10.r))),
            prefixIcon: Icon(iconData),
            fillColor: Colors.white,
            hintText: name,
            filled: true,
          )),
    );
  }
}
