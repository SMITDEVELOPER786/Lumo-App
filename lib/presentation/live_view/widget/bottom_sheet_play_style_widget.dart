import 'package:flutter/material.dart';

class BottomSheetPlayStylesWidget extends StatelessWidget {
  String images, title;
  BottomSheetPlayStylesWidget(
      {Key? key, required this.images, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          images,
          width: 32,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        )
      ],
    );
    ;
  }
}
