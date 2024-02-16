import 'package:flutter/material.dart';

import '../live_view/widget/live_chat_widget.dart';
import '../live_view/widget/live_gift_rose_widget.dart';
import '../live_view/widget/live_top_widget.dart';
import 'widget/pk_image_top_card.dart';

class PKLiveView extends StatelessWidget {
  const PKLiveView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0xff0F1622),
          ),
          Positioned(
            top: 100,
            child: Image(
              image: AssetImage('assets/images/pkbg image top.png'),
              // fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              // height: double.infinity,
            ),
          ),
          Positioned(
            top: 115,
            child: Image(
              image: AssetImage('assets/images/pk bg image.png'),
              // fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              // height: double.infinity,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .35,
            left: MediaQuery.of(context).size.width * .42,
            child: Center(
              child: Image(
                image: AssetImage('assets/images/vs.png'),
                width: 50,
                // fit: BoxFit.cover,
                // width: MediaQuery.of(context).size.width,
                // height: double.infinity,
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * .42,
              left: MediaQuery.of(context).size.width * .15,
              child: Container(
                width: 100,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://s3-alpha-sig.figma.com/img/f849/d5ea/f656a3ed9e177ba7af1177a9e5a63277?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dF7OlMLQjOm~sqXRyeFSKFk-64xKA9gZ331eUcHzHJfQ~AWPMd1fVB7olQ6wDtEppHpoe0-zOaf5mbdPN2wpuVH~J8mOHODxc-udXvt1BEdNK9kUy-zb8UMGbEFWDpIu79K8uXu8yylKYsP-YUwRh13xduvo488yPB5-M0ssg8SMKc5OjcU0LS4DTmS7UX4DpCJ~OknqC6dqQ2lrSQgmtLETWs2Ll-Q1gGUA~-SA1loZvNQB6ligLOrqiAyfsbwJzAWgwPNWCZpVABWIDZPxV3Br~54TmZyP1vAFOCnmdZWph8ymHhXkfHoS-Jt6lS5G~mabrAeNYQ5O5FLIo1SDyQ__'),
                      radius: 20,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://s3-alpha-sig.figma.com/img/f1e7/28c8/1136025699e45e2aa64331f575901c84?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=eUGJI5fSyWBhBuSyynfFLTT3GAANSpO4wj2Ts8rGmWI2UyUU~cack11AjnHhabLXtUzlHFKO2Rg-QzsN2GLPPYxuEUXwkbdvYeWAedGWmcj8RdmEK4JR03r4IXfusdYqj8hd74ANE0nXz-OhGg3t4mjT4x~3RXzCvF~fGjBC1PlZ-x0yksePy0iGBoK0k~wHuN~~-1em139v8yf35P0G7y11fg3oCLIvgbkF0eL6ouYpr~DZeFZb1N0uZEDRWfSVs3V-JC1Zn07nJwTLRxO-3oGr7rB1U-6YNMZRGFEc7lpfgAN541hX09AOyLG8D2KI4lowGwTMwbFvzIgzEIUPAg__'),
                      radius: 20,
                    ),
                  ],
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * .42,
              left: MediaQuery.of(context).size.width * .7,
              child: Container(
                width: 100,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xffE8F7FF),
                      radius: 20,
                      child: Image.asset('assets/images/user-add.png'),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xffE8F7FF),
                      radius: 20,
                      child: Image.asset('assets/images/user-add.png'),
                    ),
                    // CircleAvatar(
                    //   backgroundImage: NetworkImage(
                    //       'https://s3-alpha-sig.figma.com/img/f1e7/28c8/1136025699e45e2aa64331f575901c84?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=eUGJI5fSyWBhBuSyynfFLTT3GAANSpO4wj2Ts8rGmWI2UyUU~cack11AjnHhabLXtUzlHFKO2Rg-QzsN2GLPPYxuEUXwkbdvYeWAedGWmcj8RdmEK4JR03r4IXfusdYqj8hd74ANE0nXz-OhGg3t4mjT4x~3RXzCvF~fGjBC1PlZ-x0yksePy0iGBoK0k~wHuN~~-1em139v8yf35P0G7y11fg3oCLIvgbkF0eL6ouYpr~DZeFZb1N0uZEDRWfSVs3V-JC1Zn07nJwTLRxO-3oGr7rB1U-6YNMZRGFEc7lpfgAN541hX09AOyLG8D2KI4lowGwTMwbFvzIgzEIUPAg__'),
                    //   radius: 20,
                    // ),
                  ],
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * .17,
              left: MediaQuery.of(context).size.width * .65,
              child: PkImageTopCard()),
          Positioned(
              top: MediaQuery.of(context).size.height * .16,
              left: MediaQuery.of(context).size.width * .43,
              child: Container(
                width: 50,
                height: 20,
                child: Center(
                  child: Text(
                    '5:00',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(colors: [
                      Color(0xffF5EC21),
                      Color(0xff119645),
                    ])),
              )),
          Positioned(
            top: 40,
            child: Container(
              // width: MediaQuery,

              padding: EdgeInsets.all(10),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LiveTopWidget(),
                  // LiveSecondTopWidget(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.37,
                  ),
                  Image(
                    image: AssetImage('assets/images/yeah.png'),
                    height: 80,
                    width: 80,
                  ),
                  SizedBox(
                      // height: MediaQuery.of(context).size.height * 0.2,
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
