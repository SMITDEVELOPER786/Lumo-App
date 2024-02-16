import 'package:flutter/material.dart';

class TopImageScoreWidget extends StatelessWidget {
  String images, score;
  TopImageScoreWidget({Key? key, required this.images, required this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Image(image: AssetImage(images)),
          // Image(image: AssetImage('assets/images/vip1.png')),
          // Row(children: [Text('sdfdsf')],)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(
                image: AssetImage('assets/images/diamond.png'),
                width: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                score,
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
