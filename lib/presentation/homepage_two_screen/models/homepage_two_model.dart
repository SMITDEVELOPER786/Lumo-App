import '../../../core/app_export.dart';import 'homepagetwo_item_model.dart';/// This class defines the variables used in the [homepage_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageTwoModel {Rx<List<HomepagetwoItemModel>> homepagetwoItemList = Rx([HomepagetwoItemModel(screen:ImageConstant.imgScreen11.obs),HomepagetwoItemModel(screen:ImageConstant.imgCapture1.obs)]);

 }
