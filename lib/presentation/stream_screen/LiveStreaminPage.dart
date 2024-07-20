import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_three_page/controller/homepage_three_controller.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_three_page/models/homepage_three_model.dart';
import 'package:muhammad_zubair_s_application4/presentation/host_request.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_in_screen/controller/usercontroller.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

class LiveStreamingPage extends StatefulWidget {
  final String liveID;
  final bool isHost;

  LiveStreamingPage({Key? key, required this.liveID, required this.isHost})
      : super(key: key);

  @override
  State<LiveStreamingPage> createState() => _LiveStreamingPageState();
}

class _LiveStreamingPageState extends State<LiveStreamingPage> {
  final StreamController Streamcontroller = Get.put(StreamController());
  HomepageThreeController controller =
      Get.put(HomepageThreeController(HomepageThreeModel().obs));
  @override
  void dispose() {
    if (!widget.isHost) {
      controller.leftStream(widget.liveID);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(children: [
      ZegoUIKitPrebuiltLiveStreaming(
        appID:
            61496105, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign:
            "55ae0928b85eec9e32931cda5e5202643d5eca4c3ef60732f373e8cba5d4bde5", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: UserID,
        userName: UserController.user.data!.profileId!.username!.toString(),
        liveID: widget.liveID,
        config: widget.isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),),
             Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () => _showGiftModalSheet(context),
              child: Icon(Icons.card_giftcard),
            ),
          ),

          // ..bottomMenuBarConfig = ZegoBottomMenuBarConfig(
          //   maxCount: 5,
          //   audienceExtendButtons: [
           
          //   ],
          
      
    ]));
  }
    void _showGiftModalSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Send a Gift',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              // Add your gift options here
              ListTile(
                leading: Icon(Icons.card_giftcard),
                title: Text('Gift 1'),
                onTap: () {
                  // Handle gift sending logic
                },
              ),
              ListTile(
                leading: Icon(Icons.card_giftcard),
                title: Text('Gift 2'),
                onTap: () {
                  // Handle gift sending logic
                },
              ),
              // Add more ListTile widgets as needed
            ],
          ),
        );
      },
    );
  }
}
