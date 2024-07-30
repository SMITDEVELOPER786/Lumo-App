import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:http/http.dart' as http;
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/explore_one_page/models/explore_one_model.dart';

/// A controller class for the ExploreOnePage.
///
/// This class manages the state of the ExploreOnePage, including the
/// current exploreOneModelObj
class ExploreOneController extends GetxController {
  ExploreOneController(this.exploreOneModelObj);

  Rx<ExploreOneModel> exploreOneModelObj;
  final RxBool _isLoading = false.obs;
 
  var ReelsList = [];

  void ReelsItem(data) {
    ReelsList.clear();
    ReelsList = data;
    update();
  }

  bool isLoding = false;

  setLoading(bool val) {
    isLoding = val;
    update();
  }

  // Make isLiked observable

  bool isLiked = false;

  DisLikeReel(data) async {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST',
        Uri.parse(
            '${BaseUrl}reel/dislike'));
    request.body =
        json.encode({"reelId": data["reelId"], "likeId": data["userId"]});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  // Initialize as RxBool
  LikeReel(data) async {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST',
        Uri.parse(
            'https://hurt-alexandra-saim123-c534163d.koyeb.app/monzo/reel/like'));
    request.body =
        json.encode({"reelId": data["reelId"], "userId": data["userId"]});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  void updateLikeStatus(bool newStatus, int index) {
    ReelsList[index].isLiked = newStatus; // Assign value to .value
    update(); // Notify the UI to update
  }

  GetReels() async {
    setLoading(true);
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://hurt-alexandra-saim123-c534163d.koyeb.app/monzo/reel/get-reels'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      setLoading(false);
      String responseBody = await response.stream.bytesToString();
      var resData = jsonDecode(responseBody);

      if (resData != null) {
        ReelsItem(resData["data"]);
        print(ReelsList);
      }
    } else {
      Get.snackbar("Error", "Error while fetching videos");
      Get.back();
      print(response.reasonPhrase);
    }
  }
}
