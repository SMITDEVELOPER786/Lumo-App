import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:http/http.dart' as http;
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
  
    ReelsList = data;
    update();
  }
    bool isLoding = false;

  setLoading(bool val) {
    isLoding = val;
    update();
  }

  GetReels() async {
   setLoading(true);
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://monzo-app-api-8822a403e3e8.herokuapp.com/monzo/reel/get-reels'));

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
