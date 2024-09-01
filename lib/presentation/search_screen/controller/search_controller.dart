import 'dart:convert';

import 'package:get/get.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:http/http.dart' as http;
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';import 'package:muhammad_zubair_s_application4/presentation/search_screen/models/search_model.dart';import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/presentation/search_screen/models/userprofile2_item_model.dart';/// A controller class for the SearchScreen.
///
/// This class manages the state of the SearchScreen, including the
/// current searchModelObj
class SearchController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<SearchModel> searchModelObj = SearchModel().obs;
List  searchUsers=[].obs;
RxBool isLoading =false.obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 


Future<void> searchUser(String search)async{
  isLoading.value=true;
print('search');
try{
//   var headers = {
//   'Content-Type': 'application/json'
// };
// var request = http.Request('POST', Uri.parse('${BaseUrl}/search-user'));
// request.body = json.encode({
//    "id": search
// });
// request.headers.addAll(headers);

// http.StreamedResponse response = await request.send();

// if (response.statusCode == 200) {
//   // print(await response.stream.bytesToString());
//   String bodyResponse=await response.stream.bytesToString();
//   var deocdedData=jsonDecode(bodyResponse);
//   print('data response ::::${deocdedData['data']}');

// }
// else {
//   Get.snackbar('Error',response.reasonPhrase.toString());
//   print(response.reasonPhrase);
// }


var headers = {
  'Content-Type': 'application/json'
};
var request = http.Request('POST', Uri.parse('${BaseUrl}search-id'));
request.body = json.encode({
  "id": search
});
request.headers.addAll(headers);

http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
  // print(await response.stream.bytesToString());
   String bodyResponse=await response.stream.bytesToString();
  var deocdedData=jsonDecode(bodyResponse);
searchModelObj.value.userprofile2ItemList.value.clear();
  // print('data response ::::${deocdedData['data']}');
  for(var a in deocdedData['data']){
// print("data    :   ${a}");
searchModelObj.value.userprofile2ItemList.value.add(Userprofile2ItemModel(
        houseImage: "https://res.cloudinary.com/dk3hy0n39/image/upload/${a['profileImage']}".obs,
        houseImage1: "https://res.cloudinary.com/dk3hy0n39/image/upload/${a['profileImage']}".obs,
        houseText: "House".obs,
        userName: a['username'].toString().obs));
// searchUsers.add(Userprofile2ItemModel(id:Rx(a['_id']),userName: Rx(a['username'] ),houseImage1:Rx(''),houseImage: Rx('https://res.cloudinary.com/dk3hy0n39/image/upload/${a['profileImage']}'),houseText: Rx('house')));
  }
//   // isLoading= false as RxBool;
  isLoading.value=false;
  print(searchModelObj.value.userprofile2ItemList.value);



}
else {
   Get.snackbar('Error',response.reasonPhrase.toString());
  print(response.reasonPhrase);
  // isLoading= false as RxBool;
  isLoading.value=false;


}





}catch(e){
  Get.snackbar('Error',e.toString());
  print(e.toString());
  // isLoading= false as RxBool;
  isLoading.value=false;



}}


 }
