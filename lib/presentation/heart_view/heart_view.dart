import 'package:flutter/material.dart';

import 'widget/heart_basic_feature_widget.dart';
import 'widget/heart_live_widget.dart';
import 'widget/heart_message_widget.dart';
import 'widget/second_top_row_heart_widget.dart';
import 'widget/top_row_heart_widget.dart';


class HeartView extends StatelessWidget {
  const HeartView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          'assets/images/bgimage.jpeg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black.withOpacity(.6),
        ),
        Positioned(
          top: 40,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TopRowHeartWidget(),
                SecondTopRowHeartWidget(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                HeartLiveWidget(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .92,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeartMessageWidget(),
                      HeartMessageWidget(),
                      HeartMessageWidget(),
                      HeartMessageWidget(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                HeartBasicFeatureWidget()
              ],
            ),
          ),
        )
      ]),
    );
  }
}
