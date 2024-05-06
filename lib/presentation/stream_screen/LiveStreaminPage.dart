import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_three_page/controller/homepage_three_controller.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_three_page/models/homepage_three_model.dart';
import 'package:muhammad_zubair_s_application4/presentation/host_request.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

class LiveStreamingPage extends StatefulWidget {
  final String liveID;
  final bool isHost;

  LiveStreamingPage({Key? key, required this.liveID,  required this.isHost})
      : super(key: key);

  @override
  State<LiveStreamingPage> createState() => _LiveStreamingPageState();
}

class _LiveStreamingPageState extends State<LiveStreamingPage> {

   final StreamController Streamcontroller = Get.put(StreamController());
    HomepageThreeController controller = Get.put(HomepageThreeController(HomepageThreeModel().obs));
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
      child: ZegoUIKitPrebuiltLiveStreaming(

        appID:
            1275706078, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign:
            "d67548e2be533db0e3b12f25fe22405010c79f3d7c8a55d294629e62b819ed88", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: UserID,
        userName: 'Tester',
        liveID: widget.liveID,
        config: widget.isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
      ),
    );
  }
}
