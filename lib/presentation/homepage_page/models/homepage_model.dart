import '../../../core/app_export.dart';import 'userprofile1_item_model.dart';/// This class defines the variables used in the [homepage_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageModel {Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([Userprofile1ItemModel(image:ImageConstant.imgRectangle11.obs,userName: "Naomi AS".obs,userImage:ImageConstant.imgSpaFlower.obs,text1: "Illinois, texas".obs,text2: "23 ".obs),Userprofile1ItemModel(image:ImageConstant.imgRectangle11205x170.obs,text1: "Illinois, texas".obs,text2: "32 ".obs),Userprofile1ItemModel(image:ImageConstant.imgRectangle111.obs,text1: "Illinois, texas".obs,text2: "28 ".obs),Userprofile1ItemModel(image:ImageConstant.imgRectangle112.obs,text1: "Illinois, texas".obs,text2: "23 ".obs)]);

 }
