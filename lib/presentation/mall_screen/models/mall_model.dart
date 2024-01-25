import '../../../core/app_export.dart';import 'chatbubbles_item_model.dart';import 'viewhierarchy1_item_model.dart';/// This class defines the variables used in the [mall_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MallModel {Rx<List<ChatbubblesItemModel>> chatbubblesItemList = Rx([ChatbubblesItemModel(chatBubblesText: "Chat Bubbles".obs),ChatbubblesItemModel(chatBubblesText: "Ride".obs),ChatbubblesItemModel(chatBubblesText: "Special ID".obs),ChatbubblesItemModel(chatBubblesText: "Entrance effects".obs)]);

Rx<List<Viewhierarchy1ItemModel>> viewhierarchy1ItemList = Rx([Viewhierarchy1ItemModel(textProp2: "Preview".obs,imageProp2:ImageConstant.imgMaskGroup1.obs,imageProp3:ImageConstant.imgCheckmarkGreen80006.obs),Viewhierarchy1ItemModel(textProp2: "Preview".obs)]);

 }
