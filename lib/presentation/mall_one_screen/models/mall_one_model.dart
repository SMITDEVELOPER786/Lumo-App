import '../../../core/app_export.dart';
import 'chatbubbles1_item_model.dart';
import 'userprofile9_item_model.dart';

/// This class defines the variables used in the [mall_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MallOneModel {
  Rx<List<Chatbubbles1ItemModel>> chatbubbles1ItemList = Rx([
    Chatbubbles1ItemModel(chatBubblesText: "Chat Bubbles".obs,
    IMG: ImageConstant.bubble.obs
    ),
    Chatbubbles1ItemModel(chatBubblesText: "Ride".obs,
    IMG: ImageConstant.Carpool.obs
    ),
    Chatbubbles1ItemModel(chatBubblesText: "Special ID".obs,
    IMG: ImageConstant.SpefcialID.obs
    ),
    Chatbubbles1ItemModel(chatBubblesText: "Entrance effects".obs,
    IMG: ImageConstant.Entrance.obs
    )
  ]);

  Rx<List<Userprofile9ItemModel>> userprofile9ItemList = Rx([
    Userprofile9ItemModel(
        id: "ID".obs,
        oneMillionFiveHundredTwentyThr: "1523839".obs,
        tenThousandFiveHundred: "10,500".obs,
        id1: ImageConstant.imgCheckmarkGreen80006.obs)
  ]);
}
