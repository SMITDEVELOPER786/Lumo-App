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
            1905348293, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign:
            "cba6e4fa668481d632a47632fc41ea48e5f1940cf83590d3d3b7ccec93664864", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
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
