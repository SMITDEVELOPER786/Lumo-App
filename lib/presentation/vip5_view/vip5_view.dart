import 'package:flutter/material.dart';

import '../widgets/screen_bottom_view.dart';
import '../widgets/top_image_score_widget.dart';

class Vip5View extends StatelessWidget {
  const Vip5View({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopImageScoreWidget(
          images: 'assets/images/vip5.png',
          score: '7500000',
        ),
        // VipScreenBottomWidget()
          VipScreenBottomWidget(
            vipBadgetTitle: 'VIP Badget',
            VipBadgetImageUrl: 'assets/images/vip badget.png',
            frameTitle: 'Frame',
            FrameImageUrl: 'assets/images/farme.png',
            entranceEffectTitle: 'Entrance Effects',
            entranceEffectImageUrl: 'assets/images/entrance Effect.png',
            carTitle: 'Car',
            CarImageUrl: 'assets/images/car.png',
            colorFulMessageTitle: 'Colorful message',
            colorFulMessageImageUrl: 'assets/images/Colorful_message.png',
            flyingMessageTitle: 'Flying meassage',
            flyingMessageImageUrl: 'assets/images/flying_message_gold.png',
            privilegeTitle: 'Privilege',
            privilegeImageUrl: 'assets/images/privilege gold.png',
            preventKickTitle: 'Prevent Kick',
            preventKickImageUrl: 'assets/images/prevent kick gold.png',
            giftTitle: 'Gift',
            giftImageUrl: 'assets/images/gift.png',
            hideTitle: 'Hide',
            hideImageUrl: 'assets/images/hide.png',
            ID_UnbenTitle: 'ID unben',
            ID_UnbenImageUrl: 'assets/images/ID_Unben.png',
            helpTitle: 'Help desk',
            helpImageUrl: 'assets/images/help.png')
      ],
    );
  }
}
