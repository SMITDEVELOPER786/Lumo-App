import 'package:flutter/material.dart';

class LiveRoomWidget extends StatelessWidget {
  String images, num, networkImage;
  LiveRoomWidget(
      {Key? key,
      required this.images,
      required this.num,
      required this.networkImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
            radius: 20,
            backgroundColor: Color(0xff582804),
            child: networkImage == ''
                ? Image(image: AssetImage(images))
                : CircleAvatar(
                    backgroundImage: NetworkImage(networkImage),
                  )),
        Text(
          num,
          style: TextStyle(fontSize: 10, color: Colors.white),
        )
      ],
    );
  }
}
