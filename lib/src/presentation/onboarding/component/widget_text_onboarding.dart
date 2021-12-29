import 'package:flutter/material.dart';

class WidgetTextOnboarding extends StatelessWidget {
  const WidgetTextOnboarding(
      {Key? key,
      required this.size,
      required this.name,
      required this.fontWeight,required this.color})
      : super(key: key);
  final double size;
  final String name;
  final FontWeight fontWeight;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
          fontSize: size, color: Colors.white, fontWeight: fontWeight),
    );
  }
}