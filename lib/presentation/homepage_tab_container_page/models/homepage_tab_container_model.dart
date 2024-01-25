import '../../../core/app_export.dart';import 'jointhestreaming_item_model.dart';/// This class defines the variables used in the [homepage_tab_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageTabContainerModel {Rx<List<JointhestreamingItemModel>> jointhestreamingItemList = Rx([JointhestreamingItemModel(image:ImageConstant.imgRectangle28.obs,title: "Join the streaming Revolution".obs,description: "Embark on a Journey of Limitless Entertainment – Experience Seamless Streaming Like Never Before".obs,buttonText: "Start Now".obs),JointhestreamingItemModel(image:ImageConstant.imgRectangle28100x320.obs,title: "Stream".obs,description: "Embark on a Journey of Limitless Entertainment – Experience Seamless Streaming Like Never Before".obs,buttonText: "Start Now".obs)]);

 }
