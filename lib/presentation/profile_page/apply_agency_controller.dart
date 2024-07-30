import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
class AgencyController extends GetxController {
   TextEditingController agencyName = TextEditingController();
   TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
    var isLoading = false.obs;
  final ImagePicker _picker = ImagePicker();
  var imageFile1 = Rx<File?>(null);
  var imageFile2 = Rx<File?>(null);
  var imageFile3 = Rx<File?>(null);
  Future<void> pickImageFromGallery(int imageNumber) async {
    final XFile? xFile = await _picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 2000,
      maxHeight: 2000,
    );

    if (xFile != null && xFile.path != null) {
      if (imageNumber == 1) {
        imageFile1.value = File(xFile.path);
      } else if (imageNumber == 2) {
        imageFile2.value = File(xFile.path);
      } else if (imageNumber == 3) {
        imageFile3.value = File(xFile.path);
      }
    } else {
      print("Failed to select an image");
    }
    update();
  }

  void removeImage(int imageNumber) {
    if (imageNumber == 1) {
      imageFile1.value = null;
    } else if (imageNumber == 2) {
      imageFile2.value = null;
    } else if (imageNumber == 3) {
      imageFile3.value = null;
    }
  }

   Future<void> createAgency(agencyData) async {
    isLoading.value = true;
    var headers = {
      'Authorization': 'Bearer ${authToken}'
    };
    var request = http.MultipartRequest(
      'POST',
      Uri.parse('https://monzo-app-api-8822a403e3e8.herokuapp.com/monzo/agency/create')
    );
    request.fields.addAll({
      'email': emailController.value.text,
      'phone': phoneController.value.text,
      
    });

    if (imageFile1.value != null) {
      request.files.add(await http.MultipartFile.fromPath('agencyImg', imageFile1.value!.path));
    }
    if (imageFile2.value != null) {
      request.files.add(await http.MultipartFile.fromPath('photoId', imageFile2.value!.path));
    }
    if (imageFile3.value != null) {
      request.files.add(await http.MultipartFile.fromPath('passport', imageFile3.value!.path));
    }

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
    isLoading.value = false;
  }
}
