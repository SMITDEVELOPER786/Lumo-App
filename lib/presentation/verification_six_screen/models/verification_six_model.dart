import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [verification_six_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class VerificationSixModel {
  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        userImage: ImageConstant.imgEllipse12.obs,
        userImage1: ImageConstant.imgCheckcircle.obs,
        empireBaby: "Empire".obs),
    UserprofileItemModel(
        userImage: ImageConstant.imgEllipse1280x80.obs,
        userImage1: ImageConstant.imgCheckcircle.obs,
        empireBaby: "Monalisa".obs),
    UserprofileItemModel(
        userImage: ImageConstant.imgEllipse121.obs,
        empireBaby: "Oneil’ gurl".obs),
    UserprofileItemModel(
        userImage: ImageConstant.imgEllipse122.obs,
        userImage1: ImageConstant.imgCheckcircle.obs,
        empireBaby: "Chris".obs),
    UserprofileItemModel(
        userImage: ImageConstant.imgEllipse123.obs,
        userImage1: ImageConstant.imgCheckmark.obs,
        empireBaby: "Shawn".obs),
    UserprofileItemModel(
        userImage: ImageConstant.imgEllipse124.obs,
        userImage1: ImageConstant.imgCheckcircle.obs,
        empireBaby: "Aminat".obs),
    UserprofileItemModel(
        userImage: ImageConstant.imgEllipse125.obs,
        userImage1: ImageConstant.imgCheckcircle.obs,
        empireBaby: "Craig".obs),
    UserprofileItemModel(
        userImage: ImageConstant.imgEllipse126.obs,
        userImage1: ImageConstant.imgCheckcircle.obs,
        empireBaby: "Khan".obs),
    UserprofileItemModel(
        userImage: ImageConstant.imgEllipse127.obs,
        userImage1: ImageConstant.imgCheckcircle.obs,
        empireBaby: "Oneil’ gurl".obs)
  ]);
}
