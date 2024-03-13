import 'package:flutter/material.dart';

import '../widgets/screen_bottom_view.dart';
import '../widgets/top_image_score_widget.dart';

class VipMaxView extends StatelessWidget {
  const VipMaxView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopImageScoreWidget( 
          images: 'assets/images/vip max.png',
          score: '30000000',
        ),
        // VipScreenBottomWidget()
        VipScreenBottomWidget(
            vipBadgetTitle: 'VIP Badge',
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
            privilegeImageUrl: 'assets/images/privilege gold.png',
            preventKickTitle: 'Prevent Kick',
            preventKickImageUrl: 'assets/images/prevent kick gold.png',
            giftTitle: 'Gift',
            giftImageUrl: 'assets/images/giftgold.png',
            hideTitle: 'Hide',
            hideImageUrl: 'assets/images/hidegold.png',
            ID_UnbenTitle: 'ID unban',
            ID_UnbenImageUrl: 'assets/images/ID_Unbengold.png',
            helpTitle: 'Help desk',
            helpImageUrl: 'assets/images/helpgold.png',
            index: 7,
            )
      ],
    );
  }
}
