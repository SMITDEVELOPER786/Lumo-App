import 'dart:convert';

import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_one_page/models/homepage_one_model.dart';
import 'package:http/http.dart' as http;

/// A controller class for the HomepageOnePage.
///
/// This class manages the state of the HomepageOnePage, including the
/// current homepageOneModelObj
class HomepageOneController extends GetxController {
  HomepageOneController(this.homepageOneModelObj);

  Rx<HomepageOneModel> homepageOneModelObj;
  var bannerData = [].obs;
  void fetchBannerData() async {
    var headers = {
      'Authorization':
          'Bearer ${authToken}'
    };
    var request = http.Request(
        'GET',
        Uri.parse(
            '${BaseUrl}get-banner'));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String data = await response.stream.bytesToString();
      final decodedData = jsonDecode(data);
      if (decodedData['status']) {
        // Filter data based on category
        List<dynamic> eventData = decodedData['data']
            .where((item) => item['category'] == 'event')
            .toList();
        bannerData.value = eventData;
      }
    } else {
      print(response.reasonPhrase);
    }
  }
}
