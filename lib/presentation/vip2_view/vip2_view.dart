import 'package:flutter/material.dart';

import '../widgets/screen_bottom_view.dart';
import '../widgets/top_image_score_widget.dart';

class Vip2View extends StatelessWidget {
  const Vip2View({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopImageScoreWidget(
          images: 'assets/images/vip2.png',
          score: '2000000',
        ),
        VipScreenBottomWidget(
            vipBadgetTitle: 'VIP Budget',
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
            flyingMessageImageUrl: 'assets/images/flying message.png',
            privilegeTitle: 'Privilege',
            privilegeImageUrl: 'assets/images/Privilege.png',
            preventKickTitle: 'Prevent Kick',
            preventKickImageUrl: 'assets/images/Prevent Kick.png',
            giftTitle: 'Gift',
            giftImageUrl: 'assets/images/gift.png',
            hideTitle: 'Hide',
            hideImageUrl: 'assets/images/hide.png',
            ID_UnbenTitle: 'ID unben',
            ID_UnbenImageUrl: 'assets/images/ID_Unben.png',
            helpTitle: 'Help desk',
            helpImageUrl: 'assets/images/help.png',
            index:1
            )
        // VipScreenBottomWidget()
      ],
    );
  }
}
