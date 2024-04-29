import '../../../core/app_export.dart';
import 'homepagethree_item_model.dart';

/// This class defines the variables used in the [homepage_three_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageThreeModel {
  Rx<List<HomepagethreeItemModel>> homepagethreeItemList = Rx([
    HomepagethreeItemModel(group: ImageConstant.imgGroup62.obs),
    HomepagethreeItemModel(group: ImageConstant.imgRectangle113.obs),
    HomepagethreeItemModel(group: ImageConstant.imgRectangle114.obs)
  ]);
}
