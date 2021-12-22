import 'package:flutter/material.dart';

class ImagePersonWidget extends StatelessWidget {
  const ImagePersonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: const Image(
          image: NetworkImage('https://vtv1.mediacdn.vn/thumb_w/650/2021/12/16/5d1269dc9c51011cc45de513-16396269707211623334080-crop-1639626982814642502647.jpg'),
        ),
      ),
    );
  }
}
