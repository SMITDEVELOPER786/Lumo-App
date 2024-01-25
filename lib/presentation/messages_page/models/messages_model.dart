import '../../../core/app_export.dart';import 'userprofile5_item_model.dart';/// This class defines the variables used in the [messages_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessagesModel {Rx<List<Userprofile5ItemModel>> userprofile5ItemList = Rx([Userprofile5ItemModel(profileImage:ImageConstant.imgEllipse46850x50.obs,username: "Empire Bby".obs,greetingText: "Hello dear, can we meet?".obs,timeText: "1m".obs,notificationCount: "3".obs),Userprofile5ItemModel(profileImage:ImageConstant.imgEllipse46850x50.obs,username: "Cody Fisher".obs,greetingText: "How are you feeling now?".obs),Userprofile5ItemModel(profileImage:ImageConstant.imgEllipse46850x50.obs,username: "Eleanor Pena".obs,greetingText: "Join our night party to have fun ".obs),Userprofile5ItemModel(profileImage:ImageConstant.imgEllipse46850x50.obs,greetingText: "Join our night party to have fun ".obs)]);

 }
