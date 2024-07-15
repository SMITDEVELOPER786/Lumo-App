import 'dart:convert';

import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_tab_container_page/models/homepage_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/// A controller class for the HomepageTabContainerPage.
///
/// This class manages the state of the HomepageTabContainerPage, including the
/// current homepageTabContainerModelObj
class HomepageTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  HomepageTabContainerController(this.homepageTabContainerModelObj);

  Rx<HomepageTabContainerModel> homepageTabContainerModelObj;

  RxList<dynamic> bannerData = <dynamic>[].obs; // Make bannerData observable

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 4));

  void fetchBannerData() async {
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://hurt-alexandra-saim123-c534163d.koyeb.app/monzo/get-banner'));
    // request.headers.addAll();

    http.StreamedResponse response = await request.send();
    bannerData.clear();
    if (response.statusCode == 200) {
      String data = await response.stream.bytesToString();
      final decodedData = jsonDecode(data);
      if (decodedData['status']) {
        // Filter data based on category
        List<dynamic> eventData = decodedData['data']
            .where((item) => item['category'] == 'home')
            .toList();
        bannerData.addAll(eventData);
        update();
        // Update the observable list
      }
    } else {
      print(response.reasonPhrase);
    }
  }
}
