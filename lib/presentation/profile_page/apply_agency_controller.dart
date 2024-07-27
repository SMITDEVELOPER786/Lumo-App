import 'dart:io';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';

class AgencyController extends GetxController {
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
        imageFile2.value = File(xFile.path);
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
}
