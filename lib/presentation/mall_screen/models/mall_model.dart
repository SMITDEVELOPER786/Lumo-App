import '../../../core/app_export.dart';
import 'chatbubbles_item_model.dart';
import 'viewhierarchy1_item_model.dart';

/// This class defines the variables used in the [mall_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MallModel {
  Rx<List<ChatbubblesItemModel>> chatbubblesItemList = Rx([
      ChatbubblesItemModel(chatBubblesText: "Avatar Frame".obs,
    IMG: ImageConstant.Frame.obs
    ),
    ChatbubblesItemModel(chatBubblesText: "Chat Bubbles".obs,
    IMG: ImageConstant.bubble.obs
    ),
    ChatbubblesItemModel(chatBubblesText: "Ride".obs,
    IMG: ImageConstant.Carpool.obs
    
    ),
    ChatbubblesItemModel(chatBubblesText: "Special ID".obs,
    IMG: ImageConstant.SpefcialID.obs
    
    ),
    ChatbubblesItemModel(chatBubblesText: "Entrance effects".obs,
    IMG: ImageConstant.Entrance.obs
    
    )
  ]);

  Rx<List<Viewhierarchy1ItemModel>> viewhierarchy1ItemList = Rx([
    Viewhierarchy1ItemModel(
        textProp2: "Preview".obs,
        imageProp2: ImageConstant.Carpool.obs,
        imageProp3: ImageConstant.imgCheckmarkGreen80006.obs),
    Viewhierarchy1ItemModel(textProp2: "Preview".obs)
  ]);
}
