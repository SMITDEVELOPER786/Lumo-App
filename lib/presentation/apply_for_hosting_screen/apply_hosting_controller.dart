import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:muhammad_zubair_s_application4/core/utils/global.dart';

class ApplyHostingController extends GetxController {
  TextEditingController invitationcode = TextEditingController();

  Future<void> joinAgency() async {
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
      Uri.parse('${BaseUrl}agency/join'),
    );
    request.body = json.encode({
      "agencyCode": invitationcode
          .value.text, // Use the text from the TextEditingController
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      Get.back();
      var responseData = await response.stream.bytesToString();
        final data = json.decode(responseData);
      print(responseData);
      Get.snackbar("Success", data["message"]);
    } else {
      Get.back();
      var responseData = await response.stream.bytesToString();
      final data = json.decode(responseData);
      print(response.reasonPhrase);
      Get.snackbar("Error", data["message"]);
    }
  }
}
