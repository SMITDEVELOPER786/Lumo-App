import 'package:flutter/material.dart';

import '../widgets/screen_bottom_view.dart';
import '../widgets/top_image_score_widget.dart';

class Vip3View extends StatelessWidget {
  const Vip3View({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopImageScoreWidget(
          images: 'assets/images/vip3.png',
          score: '3000000',
        ),
        // VipScreenBottomWidget()
        VipScreenBottomWidget(
            vipBadgetTitle: 'VIP Budget',
            VipBadgetImageUrl: 'assets/images/vip badget.png',
            frameTitle: 'Frame',
            FrameImageUrl: 'assets/images/farme.png',
            entranceEffectTitle: 'Entrance Effect',
            entranceEffectImageUrl: 'assets/images/entrance Effect.png',
            carTitle: 'Car',
            CarImageUrl: 'assets/images/car.png',
            colorFulMessageTitle: 'Colorful message',
            colorFulMessageImageUrl: 'assets/images/Colorful_message.png',
            flyingMessageTitle: 'Flying message',
            flyingMessageImageUrl: 'assets/images/flying_message_gold.png',
            privilegeTitle: 'Privilege',
            privilegeImageUrl: 'assets/images/Privilege.png',
            preventKickTitle: 'Prevent Kick',
            preventKickImageUrl: 'assets/images/Prevent Kick.png',
            giftTitle: 'Gift',
            giftImageUrl: 'assets/images/gift.png',
            hideTitle: 'Hide',
            hideImageUrl: 'assets/images/hide.png',
            ID_UnbenTitle: 'ID unban',
            ID_UnbenImageUrl: 'assets/images/ID_Unben.png',
            helpTitle: 'Help desk',
            helpImageUrl: 'assets/images/help.png',
              index:2
            )
      ],
    );
  }
}
