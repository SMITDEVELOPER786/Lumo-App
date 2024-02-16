import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LiveSecondTopWidget extends StatelessWidget {
  const LiveSecondTopWidget({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Color(0xffDAFF8B),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Image(image: AssetImage('assets/images/Confetti.png')),
              SizedBox(width: 2),
              Text(
                '12 berries to surpass p..',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Color(0xff0F0E0E),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Image(image: AssetImage('assets/images/Fire.png')),
              Text(
                '700',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        // Spacer(),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.02,
        ),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Color(0xff0F0E0E),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Image(image: AssetImage('assets/images/Rose.png')),
                  Text.rich(TextSpan(
                      text: '33/',
                      style: TextStyle(color: Color(0xffFFB61D)),
                      children: <InlineSpan>[
                        TextSpan(
                          text: '100',
                          style: TextStyle(color: Colors.white),
                        )
                      ])),
                ],
              ),
              Container(
                width: 70,
                child: LinearPercentIndicator(
                  width: 70.0,
                  barRadius: Radius.circular(5),
                  lineHeight: 4.0,
                  percent: 0.44,
                  progressColor: Color(0xffFFB61D),
                ),
              )
              // Container(
              //   padding: EdgeInsets.all(16.0),
              //   // child: LinearProgressIndicator(
              //   //   backgroundColor: Colors.grey[300],
              //   //   // valueColor:
              //   //   //     AlwaysStoppedAnimation<Color>(Colors.blue),
              //   //   value:
              //   //       0.5, // Set the value as needed (between 0.0 and 1.0)
              //   // ),
              // )
            ],
          ),
        )
      ],
    );
  }
}
