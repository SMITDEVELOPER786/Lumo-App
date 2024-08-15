import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageController extends GetxController with SingleGetTickerProviderMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  RxBool isVisible = false.obs;
  RxString selectedGift = ''.obs; // To hold the selected gift image path

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      duration: Duration(seconds: 30),
      vsync: this,
    );
    animation =
        Tween<double>(begin: 1.0, end: 0.0).animate(animationController);
  }

  void showImage(String gift) {
    selectedGift.value = gift;
    isVisible.value = true;
    animationController.forward();

    // Hide the image after a few seconds
    Future.delayed(Duration(seconds: 1), () {
      hideImage();
    });
  }

  void hideImage() {
    animationController.reverse().whenComplete(() {
      isVisible.value = false;
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
