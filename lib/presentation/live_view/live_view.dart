import 'package:flutter/material.dart';

import 'widget/live_chat_widget.dart';
import 'widget/live_gift_rose_widget.dart';
import 'widget/live_second_top_widget.dart';
import 'widget/live_top_widget.dart';

class LiveView extends StatelessWidget {
  const LiveView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage('assets/images/bgimage.jpeg'),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color.fromARGB(81, 0, 0, 0),
          ),
          Positioned(
            top: 50,
            child: Container(
              // width: MediaQuery,

              padding: EdgeInsets.all(10),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LiveTopWidget(),
                  LiveSecondTopWidget(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.12,
                  ),
                  Image(
                    image: AssetImage('assets/images/yeah.png'),
                    height: 120,
                    width: 120,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.12,
                  ),
                  Row(
                    children: [LiveChatWidget(), LiveGiftRoseWidget()],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
