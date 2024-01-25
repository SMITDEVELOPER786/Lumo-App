import 'package:muhammad_zubair_s_application4/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'multilive_item_model.dart';/// This class defines the variables used in the [multi_live_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MultiLiveModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<SelectionPopupModel>> dropdownItemList2 = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<MultiliveItemModel>> multiliveItemList = Rx([MultiliveItemModel(rectangle:ImageConstant.imgRectangle90.obs),MultiliveItemModel(rectangle:ImageConstant.imgRectangle91.obs),MultiliveItemModel(rectangle:ImageConstant.imgRectangle93.obs),MultiliveItemModel(rectangle:ImageConstant.imgRectangle94.obs)]);

 }
