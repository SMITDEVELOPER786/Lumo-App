import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_three_page/controller/homepage_three_controller.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_three_page/models/homepage_three_model.dart';

import 'package:muhammad_zubair_s_application4/presentation/sign_in_screen/controller/usercontroller.dart';
import 'package:muhammad_zubair_s_application4/presentation/stream_screen/controller/fetchgifts_controller.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';
import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';

class LiveStreamingPage extends StatefulWidget {
  final String liveID;
  final bool isHost;
  final String? creatorid;

  LiveStreamingPage(
      {Key? key, required this.liveID, required this.isHost, this.creatorid})
      : super(key: key);

  @override
  State<LiveStreamingPage> createState() => _LiveStreamingPageState();
}

class _LiveStreamingPageState extends State<LiveStreamingPage> {
  List<ZegoLiveStreamingMenuBarButtonName> customIcons = [
    ZegoLiveStreamingMenuBarButtonName.switchCameraButton,
    ZegoLiveStreamingMenuBarButtonName.beautyEffectButton,
    ZegoLiveStreamingMenuBarButtonName.toggleCameraButton,
    ZegoLiveStreamingMenuBarButtonName.toggleMicrophoneButton,
    ZegoLiveStreamingMenuBarButtonName.soundEffectButton
    // Icons.cookie,
    // Icons.phone,
    // Icons.speaker,
    // Icons.air,
    // Icons.blender,
    // Icons.file_copy,
    // Icons.place,
    // Icons.phone_android,
    // Icons.phone_iphone,
  ];
  final StreamController Streamcontroller = Get.put(StreamController());
  HomepageThreeController controller =
      Get.put(HomepageThreeController(HomepageThreeModel().obs));
  final GiftsController giftsController = Get.put(GiftsController());

  @override
  void initState() {
    super.initState();
    controller.initializeColors(giftsController.gifts.length);

    giftsController.refreshGifts();
    ZegoUIKit().getInRoomMessageStream().listen(_handleCustomMessage);
    //     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {

    //       ZegoUIKit().getInRoomCommandReceivedStream().listen(
    //           onInRoomCommandReceived);
    // });
    // Refresh gifts when the page is initialized
  }

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
          config: widget.isHost == true
              ? ZegoUIKitPrebuiltLiveStreamingConfig.host(
                  plugins: [ZegoUIKitSignalingPlugin()])
              : ZegoUIKitPrebuiltLiveStreamingConfig.audience(
                  plugins: [ZegoUIKitSignalingPlugin()])
            ..video = ZegoUIKitVideoConfig.preset1080P()
            ..bottomMenuBar = ZegoLiveStreamingBottomMenuBarConfig(
              maxCount: 1,
              hostButtons: [
                ZegoLiveStreamingMenuBarButtonName.beautyEffectButton,
                ZegoLiveStreamingMenuBarButtonName.toggleCameraButton,
                ZegoLiveStreamingMenuBarButtonName.toggleMicrophoneButton,
                ZegoLiveStreamingMenuBarButtonName.soundEffectButton
              ],
              hostExtendButtons: customIcons
                  .map(
                    (customIcon) => ZegoLiveStreamingMenuBarExtendButton(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(40, 40),
                          shape: const CircleBorder(),
                          // primary: const Color(0xff2C2F3E).withOpacity(0.6),
                        ),
                        onPressed: () {},
                        child: SizedBox(),
                      ),
                    ),
                  )
                  .toList(),
            )
            ..topMenuBar.hostAvatarBuilder = (ZegoUIKitUser host) {
              return Container(
                width: 130,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 30,
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/pngwing 10.jpg",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.5),
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://res.cloudinary.com/dk3hy0n39/image/upload/${UserController.user.data!.profileId!.profileImage!.toString()}"),
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "${UserController.user.data!.id.toString()}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              child: Image.asset(
                                "assets/images/img_cherries.png",
                              ),
                            ),
                            Text(
                              "${UserController.user.data!.profileId!.diamonds.toString()}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment(1.03, 1.11),
                          end: Alignment(0.07, -0.41),
                          colors: [
                            appTheme.green70002,
                            theme.colorScheme.primary,
                          ],
                        ),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              );
              // Text(host.name);
            }),
      widget.isHost == false
          ? Positioned(
              bottom: 20,
              right: 20,
              child: FloatingActionButton(
                onPressed: () => _showGiftModalSheet(context),
                child: Image.asset("assets/images/img_pngegg_13_1.png"),
              ),
            )
          : SizedBox(),
    ]));
  }

  void _showGiftModalSheet(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(25),
        topLeft: Radius.circular(25),
      )),
      context: context,
      builder: (BuildContext context) {
        return Obx(() {
          if (giftsController.isLoading.value) {
            return Center(child: CircularProgressIndicator());
          }

          if (giftsController.gifts.isEmpty) {
            return Center(child: Text('No gifts available.'));
          }

          return Container(
            padding: EdgeInsets.all(16.0),
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffF8FFEE), // Start with yellow at the top
                  Color(0xffF8FFEE), // Transition to green at the bottom
                ],
              ),
            ),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: giftsController.gifts.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 5.0,
              ),
              itemBuilder: (context, index) {
                var gift = giftsController.gifts[index];
                return GestureDetector(
                  onTap: () async {
                    // controller.changeColor(index);

                    var sendgift = {
                      "senderId": UserController.user.data!.sId.toString(),
                      "recieverId": widget.creatorid,
                      "giftId": giftsController.gifts[index]["_id"],
                      "giftname": giftsController.gifts[index]["giftName"],
                    };
                    await controller.sendGift(sendgift);
                    Navigator.pop(context);

                    // Handle gift sending logic
                    print('Send gift: ${sendgift}');
                  },
                  child: Container(
                    height: 117,
                    width: 97,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: controller.colors[index],
                      // image: DecorationImage(
                      //     image: NetworkImage(
                      //         "https://res.cloudinary.com/dk3hy0n39/image/upload/${giftsController.gifts[index]["giftImg"]}"),
                      //     fit: BoxFit.fill),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 45,
                          height: 50,
                          child: Image.network(
                            "https://res.cloudinary.com/dk3hy0n39/image/upload/${giftsController.gifts[index]["giftImg"]}",
                            height: 60,
                          ),
                        ),
                        Text(
                          giftsController.gifts[index]["giftName"],
                          style: TextStyle(
                            fontSize: 8,
                          ),
                        ),
                        Text(
                          giftsController.gifts[index]["giftValue"],
                          style: TextStyle(
                            fontSize: 8,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        });
      },
    );
  }

  void _handleCustomMessage(ZegoInRoomMessage message) {
    final data = jsonDecode(message.message);
    if (data['type'] == 'gift') {
      final giftId = data['giftId'];
      final sender = data['sender'];
      // Display gift notification
      print('Received gift $giftId from $sender');
    }
  }
}
