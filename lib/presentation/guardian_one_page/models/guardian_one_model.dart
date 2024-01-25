import '../../../core/app_export.dart';import 'userprofile13_item_model.dart';import 'entryeffects_item_model.dart';/// This class defines the variables used in the [guardian_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class GuardianOneModel {Rx<List<Userprofile13ItemModel>> userprofile13ItemList = Rx([Userprofile13ItemModel(userText: "10,500".obs,checkmarkImage:ImageConstant.imgCheckmarkGreen80006.obs,userImage:ImageConstant.imgPngkey1.obs)]);

Rx<List<EntryeffectsItemModel>> entryeffectsItemList = Rx([EntryeffectsItemModel(entryImage:ImageConstant.imgCurrencyeth.obs,entryText: "Entry effects".obs),EntryeffectsItemModel(entryImage:ImageConstant.imgVuesaxLinearRefreshCircle14x14.obs,entryText: "Top ranking".obs),EntryeffectsItemModel(entryImage:ImageConstant.imgCurrencyeth.obs,entryText: "Exclusive bubbles".obs),EntryeffectsItemModel(entryImage:ImageConstant.imgVuesaxLinearRefreshCircle14x14.obs,entryText: "Distinct Logo".obs)]);

 }
