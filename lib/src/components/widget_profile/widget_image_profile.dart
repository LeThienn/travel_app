import 'package:flutter/material.dart';

class ImageProfileWidget extends StatelessWidget {
  const ImageProfileWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      width: 150.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        image: DecorationImage(
          image: NetworkImage(
              'https://media.istockphoto.com/photos/millennial-male-team-leader-organize-virtual-workshop-with-employees-picture-id1300972574?b=1&k=20&m=1300972574&s=170667a&w=0&h=2nBGC7tr0kWIU8zRQ3dMg-C5JLo9H2sNUuDjQ5mlYfo='),
          fit: BoxFit.cover,
        ),
        // shape: BoxShape.circle,
      ),
    );
  }
}
