import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_three_page/models/homepage_three_model.dart';
import 'package:http/http.dart' as http;
import 'package:muhammad_zubair_s_application4/presentation/stream_screen/LiveStreaminPage.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

/// A controller class for the HomepageThreePage.
///
/// This class manages the state of the HomepageThreePage, including the
/// current homepageThreeModelObj
class HomepageThreeController extends GetxController {
  HomepageThreeController(this.homepageThreeModelObj);

  Rx<HomepageThreeModel> homepageThreeModelObj;

  var colors = <Color>[].obs;
  initializeColors(int count) {
    colors.value = List.generate(count, (index) => Colors.white);
  }

  changeColor(int index) {
    colors[index] =
        colors[index] == Colors.white ? Color(0xffE8FFB7) : Colors.white;
  }

  var isLoading = true.obs;
  String selectedCountry = 'All';
  List<dynamic> uniqueCountries = [];
  Map<String, List<dynamic>> countryStreams = {};
  List<dynamic> streamData = [].obs;

  List<dynamic> getDisplayedStreams() {
    return selectedCountry == 'All'
        ? streamData
        : countryStreams[selectedCountry] ?? [];
  }

  void setSelectedCountry(String country) {
    selectedCountry = country;
    update();
  }

  addStreamData(dynamic data) {
    streamData.add(data);
    update();
  }

  FetchStreams() async {
    isLoading(true);
    var headers = {'Authorization': 'Bearer ${authToken} '};
    var request = http.Request('GET', Uri.parse('${BaseUrl}live-stream/get'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      isLoading(false);

      streamData.clear();
      uniqueCountries.clear();
      String data = await response.stream.bytesToString();
      final decodedData = jsonDecode(data);
      if (decodedData['status']) {
        final List<dynamic> streams = decodedData['data'];
        streams.forEach((stream) {
          addStreamData(stream);
        });
        final List<dynamic> countries = decodedData["data"];
        countries.forEach((countries) {
          String countryName = countries['country'];
          if (!uniqueCountries.contains(countryName)) {
            uniqueCountries.add(countryName);
            countryStreams[countryName] = [];
          }

          countryStreams[countryName]?.add(streams);
        });
      }
    } else {
      print(response.reasonPhrase);
    }
    isLoading(false);
  }

  leftStream(String liveID) async {
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authToken}'
    };
    var request = http.Request(
        'POST',
        Uri.parse(
            'https://monzo-app-api-8822a403e3e8.herokuapp.com/monzo/live-stream/end'));
    request.body = json.encode({"streamId": liveID});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  ConnectStream(connectstreamData) async {
    isLoading(true);
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authToken}'
    };
    var request = http.Request(
        'POST',
        Uri.parse(
            'https://monzo-app-api-8822a403e3e8.herokuapp.com/monzo/live-stream/join'));
    request.body = json.encode({"streamId": connectstreamData["_id"]});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      final responseBody = await response.stream.bytesToString();
      final data = json.decode(responseBody);

      Get.snackbar("Message", "Join Stream Successfully");
      Get.lazyPut(() => LiveStreamingPage(
            liveID: connectstreamData["HostID"],
            creatorid: data["hostId"],
            isHost: false,
          ));
      Get.to(() => LiveStreamingPage(
            liveID: connectstreamData["HostID"],
            creatorid: data["data"]["hostId"],
            isHost: false,
          ));

      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
      isLoading(false);
    }
  }

  sendGift(sendgift) async {
    try {
      var headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authToken}'
      };
      var request = http.Request(
          'POST',
          Uri.parse(
              'https://monzo-app-api-8822a403e3e8.herokuapp.com/monzo/gift/send'));
      request.body = json.encode({
        "senderId": sendgift["senderId"],
        "recieverId": sendgift["recieverId"].toString(),
        "giftId": sendgift["giftId"].toString(),
      });
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        final responseBody = await response.stream.bytesToString();
        final data = json.decode(responseBody);

        ZegoUIKit().sendInRoomMessage(
          "Sends you a gift ${sendgift["giftname"]}",
        );
        print(await response.stream.bytesToString());
      } else {
        print(response.reasonPhrase);
      }
    } catch (e) {
      print('Error sending gift: $e');
    }
  }
}
