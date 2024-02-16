import 'package:flutter/material.dart';

import 'bottom_sheet_basic_feature_widget.dart';
import 'bottom_sheet_play_style_widget.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      // Customize the content of your bottom sheet
      decoration: BoxDecoration(
          color: Color(0xffF1F8DF),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          )),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            'Basic Tools',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomSheetBasicToolWidget(
                images: 'assets/images/SpeakerSimpleSlash.png',
                title: 'Sound',
              ),
              BottomSheetBasicToolWidget(
                images: 'assets/images/ShareNetwork.png',
                title: 'Share',
              ),
              BottomSheetBasicToolWidget(
                images: 'assets/images/Sliders.png',
                title: 'Effects',
              ),
              BottomSheetBasicToolWidget(
                images: 'assets/images/WarningCircle.png',
                title: 'Reports',
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Basic Tools',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomSheetPlayStylesWidget(
                images: 'assets/images/gift.png',
                title: 'Rewards',
              ),
              BottomSheetPlayStylesWidget(
                images: 'assets/images/protection.png',
                title: 'Guardian',
              ),
              BottomSheetPlayStylesWidget(
                images: 'assets/images/store.png',
                title: 'Store',
              ),
              BottomSheetPlayStylesWidget(
                images: 'assets/images/vip.png',
                title: 'VIP',
              ),
            ],
          )
          // ListTile(
          //   leading: Icon(Icons.share),
          //   title: Text('Share'),
          //   onTap: () {
          //     // Handle Share action
          //     Navigator.pop(context);
          //   },
          // ),
          // ListTile(
          //   leading: Icon(Icons.link),
          //   title: Text('Copy Link'),
          //   onTap: () {
          //     // Handle Copy Link action
          //     Navigator.pop(context);
          //   },
          // ),
          // Add more ListTile widgets as needed
        ],
      ),
    );
  }
}
