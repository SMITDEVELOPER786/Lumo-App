import 'dart:convert';

import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_three_page/models/homepage_three_model.dart';
import 'package:http/http.dart' as http;
import 'package:muhammad_zubair_s_application4/presentation/stream_screen/LiveStreaminPage.dart';

/// A controller class for the HomepageThreePage.
///
/// This class manages the state of the HomepageThreePage, including the
/// current homepageThreeModelObj
class HomepageThreeController extends GetxController {
  HomepageThreeController(this.homepageThreeModelObj);

  Rx<HomepageThreeModel> homepageThreeModelObj;

  var isLoading = true.obs;
  List<dynamic> streamData = [].obs;

  addStreamData(dynamic data) {
    streamData.add(data);
    update();
  }

  FetchStreams() async {
    isLoading(true);
    var headers = {'Authorization': 'Bearer ${authToken} '};
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://monzo-app-api-8822a403e3e8.herokuapp.com/monzo/live-stream/get'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      streamData.clear();
      String data = await response.stream.bytesToString();
      final decodedData = jsonDecode(data);
      if (decodedData['status']) {
        final List<dynamic> streams = decodedData['data'];
        streams.forEach((stream) {
          addStreamData(stream);
        });
      }
    } else {
      print(response.reasonPhrase);
    }
    isLoading(false);
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
      Get.snackbar("Message", "JOin Stream Successfully");
      Get.lazyPut(() => LiveStreamingPage(
            liveID: connectstreamData["HostID"],
            isHost: false,
          ));
      // Get.to(() => LiveStreamingPage(
      //       liveID: connectstreamData["HostID"],
      //       isHost: false,
      //     ));

      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
      isLoading(false);
    }
  }
}
