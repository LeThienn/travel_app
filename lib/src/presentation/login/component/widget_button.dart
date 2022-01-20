import 'package:flutter/material.dart';
import 'package:travel_app/src/presentation/navigation/bottom_navigation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class WidgetButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const WidgetButton({required this.name, required this.check});
  final name;
  final check;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: SizedBox(
        width: double.infinity,
        height: 51.h,
        // ignore: deprecated_member_use
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BottomNavigationScreen()));
          },
          child:  Text((name),
              style: TextStyle(color: Colors.white, fontSize: 14.sp)),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.r))),
          color: Colors.blue,
        ),
      ),
    );
  }
}