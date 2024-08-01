import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_in_screen/controller/usercontroller.dart';
import 'package:zego_uikit_prebuilt_live_audio_room/zego_uikit_prebuilt_live_audio_room.dart';

class AudioStream extends StatefulWidget {

  final String liveID;
   final String? creatorid;
   final bool isHost;

   AudioStream({Key? key, required this.liveID ,   this.creatorid ,  required this.isHost}) : super(key: key);

  @override
  State<AudioStream> createState() => _AudioStreamState();
}

class _AudioStreamState extends State<AudioStream> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltLiveAudioRoom(
        appID: 594701513, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign: "8a3c028bffbd4b21c397a79ab65bbf151f470a3c5a3e9b820de488efc5afb2ba", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: UserID,
        userName: UserController.user.data!.profileId!.username!.toString(),
        roomID: widget.liveID,
        config: widget.isHost
            ? ZegoUIKitPrebuiltLiveAudioRoomConfig.host()
            : ZegoUIKitPrebuiltLiveAudioRoomConfig.audience(),
      ),
    );
  }
}