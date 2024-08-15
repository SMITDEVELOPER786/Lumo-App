import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_three_page/controller/homepage_three_controller.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_three_page/models/homepage_three_model.dart';

class GiftsController extends GetxController {
  var isLoading = true.obs;
  var gifts = [].obs;
  var categorizedGifts = <String, List<Gift>>{}.obs;
  var selectedCategory = ''.obs;

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
        gifts.value =
            (data['data'] as List).map((e) => Gift.fromJson(e)).toList();
        categorizeGifts(); // Move t
      } else {
        print(response.reasonPhrase);
      }
    } catch (e) {
      print('Error fetching gifts: $e');
    } finally {
      isLoading.value = false;
    }
  }

  void categorizeGifts() {
    var tempMap = <String, List<Gift>>{};

    for (var gift in gifts) {
      if (tempMap.containsKey(gift.giftCategory)) {
        tempMap[gift.giftCategory]!.add(gift);
      } else {
        tempMap[gift.giftCategory] = [gift];
      }
    }

    categorizedGifts.value = tempMap;
    if (tempMap.isNotEmpty) {
      selectedCategory.value = tempMap.keys.first;
    }
  }

  void selectCategory(String category) {
    selectedCategory.value = category;
  }

  void refreshGifts() {
    fetchGifts();
  }
}

class Gift {
  final String id;
  final List<String> senderId;
  final List<String> recieverId;
  final String giftImg;
  final String giftCategory;
  final String giftValue;
  final String giftName;

  Gift({
    required this.id,
    required this.senderId,
    required this.recieverId,
    required this.giftImg,
    required this.giftCategory,
    required this.giftValue,
    required this.giftName,
  });

  factory Gift.fromJson(Map<String, dynamic> json) {
    return Gift(
      id: json['_id'],
      senderId: List<String>.from(json['senderId']),
      recieverId: List<String>.from(json['recieverId']),
      giftImg: json['giftImg'],
      giftCategory: json['giftCategory'],
      giftValue: json['giftValue'].toString(),
      giftName: json['giftName'],
    );
  }
}
