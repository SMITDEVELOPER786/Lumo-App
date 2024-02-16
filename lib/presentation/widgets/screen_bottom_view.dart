import 'package:flutter/material.dart';

import 'vip_image_text_widget.dart';


class VipScreenBottomWidget extends StatelessWidget {
  String vipBadgetTitle,
      VipBadgetImageUrl,
      frameTitle,
      FrameImageUrl,
      entranceEffectTitle,
      entranceEffectImageUrl,
      carTitle,
      CarImageUrl,
      colorFulMessageTitle,
      colorFulMessageImageUrl,
      flyingMessageTitle,
      flyingMessageImageUrl,
      privilegeTitle,
      privilegeImageUrl,
      preventKickTitle,
      preventKickImageUrl,
      giftTitle,
      giftImageUrl,
      hideTitle,
      hideImageUrl,
      ID_UnbenTitle,
      ID_UnbenImageUrl,
      helpTitle,
      helpImageUrl;

  VipScreenBottomWidget(
      {Key? key,
      required this.vipBadgetTitle,
      required this.VipBadgetImageUrl,
      required this.frameTitle,
      required this.FrameImageUrl,
      required this.entranceEffectTitle,
      required this.entranceEffectImageUrl,
      required this.carTitle,
      required this.CarImageUrl,
      required this.colorFulMessageTitle,
      required this.colorFulMessageImageUrl,
      required this.flyingMessageTitle,
      required this.flyingMessageImageUrl,
      required this.privilegeTitle,
      required this.privilegeImageUrl,
      required this.preventKickTitle,
      required this.preventKickImageUrl,
      required this.giftTitle,
      required this.giftImageUrl,
      required this.hideTitle,
      required this.hideImageUrl,
      required this.ID_UnbenTitle,
      required this.ID_UnbenImageUrl,
      required this.helpTitle,
      required this.helpImageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height*.40,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bottom bg image.png'),
              fit: BoxFit.cover)),
      padding: EdgeInsets.all(20),
      child: Column(
        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              VipImageTextWidget(
                  image: VipBadgetImageUrl, title: vipBadgetTitle),
              VipImageTextWidget(image: FrameImageUrl, title: frameTitle),
              VipImageTextWidget(
                  image: entranceEffectImageUrl, title: entranceEffectTitle),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              VipImageTextWidget(image: CarImageUrl, title: carTitle),
              VipImageTextWidget(
                  image: colorFulMessageImageUrl, title: colorFulMessageTitle),
              VipImageTextWidget(
                  image: flyingMessageImageUrl, title: flyingMessageTitle),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              VipImageTextWidget(
                  image: privilegeImageUrl, title: privilegeTitle),
              VipImageTextWidget(
                  image: preventKickImageUrl, title: preventKickTitle),
              VipImageTextWidget(image: giftImageUrl, title: giftTitle),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              VipImageTextWidget(image: hideImageUrl, title: hideTitle),
              VipImageTextWidget(image: ID_UnbenImageUrl, title: ID_UnbenTitle),
              VipImageTextWidget(image: helpImageUrl, title: helpTitle),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 30,
            width: 200,
            child: Center(
              child: Text(
                'Buy',
                style: TextStyle(color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xffF5EC21),
                      Color(0xff119645),
                    ])),
          )
        ],
      ),
    );
  }
}
