import '../../../core/app_export.dart';
import 'userprofile2_item_model.dart';

/// This class defines the variables used in the [search_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel {
  Rx<List<Userprofile2ItemModel>> userprofile2ItemList = Rx([
    Userprofile2ItemModel(
        houseImage: ImageConstant.imgRectangle115.obs,
        houseImage1: ImageConstant.imgCollision.obs,
        houseText: "House".obs,
        userName: "Oneil’ gurl".obs),
    Userprofile2ItemModel(
        houseImage: ImageConstant.imgRectangle116.obs,
        houseImage1: ImageConstant.imgCollision.obs,
        houseText: "House".obs,
        userName: "Empire Bby".obs),
    Userprofile2ItemModel(
        houseImage: ImageConstant.imgRectangle117.obs,
        houseImage1: ImageConstant.imgCollision.obs,
        houseText: "House".obs,
        userName: "Alex Vec".obs),
    Userprofile2ItemModel(houseImage: ImageConstant.imgRectangle118.obs)
  ]);
}
