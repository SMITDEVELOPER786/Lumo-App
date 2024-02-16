import '../../../core/app_export.dart';
import 'userprofile4_item_model.dart';

/// This class defines the variables used in the [gift_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class GiftOneModel {
  Rx<List<Userprofile4ItemModel>> userprofile4ItemList = Rx([
    Userprofile4ItemModel(
        userImage: ImageConstant.imgButterflySideView.obs,
        userName: "Butterfly".obs,
        stackText: "3000".obs),
    Userprofile4ItemModel(
        userImage: ImageConstant.imgFestival.obs,
        userName: "Birthday".obs,
        stackText: "1000".obs),
    Userprofile4ItemModel(
        userImage: ImageConstant.imgConfetti64x64.obs,
        userName: "Celebrate".obs,
        stackText: "1500".obs),
    Userprofile4ItemModel(
        userImage: ImageConstant.imgMadagascar.obs,
        userName: "Lion".obs,
        stackText: "1500".obs),
    Userprofile4ItemModel(
        userImage: ImageConstant.imgAutomaticCarWash.obs,
        userName: "Super car".obs,
        stackText: "3000".obs),
    Userprofile4ItemModel(
        userImage: ImageConstant.imgApplause.obs,
        userName: "Appreciate".obs,
        stackText: "1500".obs),
    Userprofile4ItemModel(
        userImage: ImageConstant.imgGift.obs,
        userName: "Gift".obs,
        stackText: "1500".obs),
    Userprofile4ItemModel(
        userImage: ImageConstant.imgNewYearSEve.obs,
        userName: "Eve".obs,
        stackText: "1500".obs)
  ]);
}
