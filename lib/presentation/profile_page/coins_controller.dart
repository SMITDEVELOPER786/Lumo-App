import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:http/http.dart' as http;
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_in_screen/controller/usercontroller.dart';

class CoinsController extends GetxController {
  final TextEditingController userIdController = TextEditingController();
  final TextEditingController transferAmountController =
      TextEditingController();
  var userName = ''.obs;
  var userimage = ''.obs;
  var isLoading = false.obs;
  var receiverId = "".obs;
  var loading = false.obs;



  void fetchUserName(String userId) async {
    if (userId.isEmpty) {
      userName.value = '';
      userimage.value = '';
      return;
    }
    isLoading.value = true;
    try {
      var headers = {'Content-Type': 'application/json'};
      var request = http.Request('POST', Uri.parse('${BaseUrl}search-user'));
      request.body = json.encode({"searchId": userId});
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        final responseBody = await response.stream.bytesToString();
        final data = json.decode(responseBody);
        List<dynamic> userList = data['data'];

        bool userFound = false;
      

        for (var user in userList) {
          if (user['Id'] == userId) {
            userName.value = user['username'] ?? 'No name found';
            userimage.value = user["profileImage"] ?? "";
            receiverId.value = user["_id"];

            userFound = true;
            break;
          }
        }

        if (!userFound) {
          userName.value = 'User not found';
           userimage.value = "";
        }
      } else {
        userName.value = 'User not found';
         userimage.value = "";
      }
    } catch (e) {
      userName.value = 'Error fetching user';
    } finally {
      isLoading.value = false;
    }
  }

  sendCoins() async {
    loading.value = true;
    try {
      var headers = {
        'Content-Type': 'application/json',
       'Authorization': 'Bearer ${authToken}'
      };
      var request = http.Request('POST', Uri.parse('${BaseUrl}/coin/send'));
      request.body = json.encode({
        "senderId": UserController.user.data!.sId , 
       
        "recieverId":   receiverId.value,
        "coins": transferAmountController.value.text,
      });
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
      final responseBody = await response.stream.bytesToString();
        final data = json.decode(responseBody);
        Get.snackbar("Success", data["message"]);
        Get.back();
       
      } else {
         final responseBody = await response.stream.bytesToString();
        final data = json.decode(responseBody);
       Get.snackbar("Error", data["message"]);
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      loading.value = false;
    }
  }

  @override
  void onClose() {
    userIdController.dispose();
    transferAmountController.dispose();
    super.onClose();
  }
}
