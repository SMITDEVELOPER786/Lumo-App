import '../../../core/app_export.dart';
import 'allhosttextsection_item_model.dart';

/// This class defines the variables used in the [admin_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AdminModel {
  Rx<List<AllhosttextsectionItemModel>> allhosttextsectionItemList = Rx([
    AllhosttextsectionItemModel(
        allHostImage: ImageConstant.imgThumbsUpGreenA700.obs,
        allHostText: "All Host".obs),
    AllhosttextsectionItemModel(
        allHostImage: ImageConstant.imgThumbsUpGreenA70024x24.obs,
        allHostText: "Invitation codes".obs),
    AllhosttextsectionItemModel(
        allHostImage: ImageConstant.imgCheckmarkGreenA700.obs,
        allHostText: "Host requests".obs),
    AllhosttextsectionItemModel(
        allHostImage: ImageConstant.imgThumbsUpGreenA700.obs,
        allHostText: "Salaries".obs),
    AllhosttextsectionItemModel(
        allHostImage: ImageConstant.imgThumbsUpGreenA70024x24.obs,
        allHostText: "Salaries target".obs),
    AllhosttextsectionItemModel(
        allHostImage: ImageConstant.imgCheckmarkGreenA700.obs,
        allHostText: "Host notice".obs)
  ]);
}
