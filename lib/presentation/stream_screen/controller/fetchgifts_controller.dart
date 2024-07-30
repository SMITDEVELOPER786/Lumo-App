import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_three_page/controller/homepage_three_controller.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_three_page/models/homepage_three_model.dart';

class GiftsController extends GetxController {
  var isLoading = true.obs;
  var gifts = [].obs;
  

  @override
  void onInit() {

    super.onInit();
    fetchGifts();
  }

  void fetchGifts() async {
         HomepageThreeController controller =
      Get.put(HomepageThreeController(HomepageThreeModel().obs));
 
    try {
      var request = http.Request('GET', Uri.parse('${BaseUrl}/gift'));
      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        final responseBody = await response.stream.bytesToString();

         final data = json.decode(responseBody);
        gifts.value = data["data"];
         controller.initializeColors(gifts.length);
      } else {
        print(response.reasonPhrase);
      }
    } catch (e) {
      print('Error fetching gifts: $e');
    } finally {
      isLoading.value = false;
    }
  }
    void refreshGifts() {
    fetchGifts();
  }
}
