import 'package:flutter/material.dart';

class BottomSheetBasicToolWidget extends StatelessWidget {
  String images, title;
  BottomSheetBasicToolWidget(
      {Key? key, required this.images, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xffE2ECC8),
          child: Image.asset(
            images,
            color: Color(0xff4BAC3C),
          ),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
        )
      ],
    );
  }
}
