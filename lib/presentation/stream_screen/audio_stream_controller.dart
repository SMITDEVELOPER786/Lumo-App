import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';

import 'package:http/http.dart' as http;
import 'package:muhammad_zubair_s_application4/presentation/audio_live_screen/audio_live_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/stream_screen/audio_stream.dart';

class AudioStreamController extends GetxController {
  TextEditingController titlecontroller = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  Rx<File?> imageFile = Rx<File?>(null); // Rx variable to hold the image file

  Future<void> pickImageFromGallery() async {
    final XFile? xFile = await _picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 2000,
      maxHeight: 2000,
    );

    if (xFile != null && xFile.path != null) {
      print("Selected file path: ${xFile.path}");
      imageFile.value = File(
          xFile.path); // Update the imageFile value with the picked image file
      print("imageFile data: ${imageFile.value}");
    } else {
      print("Failed to select an image");
    }
    update();
  }

  var streamType = "Public".obs;

  var streamlist = [
    "Public",
    "Private",
  ].obs;

  SelectStreamType(value) {
    streamType.value = value;
    update();
  }

  final tags = [
    "#video",
    "#liveStreaming",
    "#public",
    "#private",
    // Add more tags as needed
  ].obs;
  final List<bool> selectedTags = List.filled(4, false).obs;
  final List<String> selectedTagNames = <String>[].obs;

  void toggleTagSelection(int index) {
    selectedTags[index] = !selectedTags[index];
    if (selectedTags[index]) {
      selectedTagNames.add(tags[index]);
    } else {
      selectedTagNames.remove(tags[index]);
    }
  }
  var hostId;
  var hostName;
    LiveStreamingAPI(context, streamingdata) async {
    Get.dialog(
      Center(
        child:
            CircularProgressIndicator(), // Replace this with your custom loader widget
      ),
      barrierDismissible: false,
    );
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authToken}'
    };
    var request = http.Request(
        'POST',
        Uri.parse(
            '${BaseUrl}live-stream/create'));
   if (streamType.value.toLowerCase() == "private") {
      Map<String, dynamic> requestBody = {
        "streamType": "live",
        "title": streamingdata["title"],
        "streamLevel": streamingdata["streamLevel"],
        "tags": streamingdata["tags"],
        "country": streamingdata["country"],
        "streamPass": streamingdata["streamPass"]
      };
    } else {
      Map<String, dynamic> requestBody = {
        "streamType": "live",
        "title": streamingdata["title"],
        "streamLevel": streamingdata["streamLevel"],
        "tags": streamingdata["tags"],
        "country": streamingdata["country"],
      };
       request.headers.addAll(headers);
    
    request.body = json.encode(requestBody);
    }
   
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String responseBody = await response.stream.bytesToString();
      var resData = jsonDecode(responseBody);
      if (resData["status"] == true) {
        Get.back();
        hostId = resData["data"]["_id"].toString();
        hostName = resData["data"]["hostName"].toString();
        Get.to(AudioStream(
          liveID: hostId.toString(),
          isHost: true,
        ));
      }
    } else {
      Get.back();
      String responseBody = await response.stream.bytesToString();
      var resData = jsonDecode(responseBody);

      Get.snackbar("error", resData["message"]);

      print(response.reasonPhrase);
    }
  }


}
