import 'package:muhammad_zubair_s_application4/core/app_export.dart';import 'package:muhammad_zubair_s_application4/presentation/multi_live_screen/models/multi_live_model.dart';/// A controller class for the MultiLiveScreen.
///
/// This class manages the state of the MultiLiveScreen, including the
/// current multiLiveModelObj
class MultiLiveController extends GetxController {Rx<MultiLiveModel> multiLiveModelObj = MultiLiveModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

onSelected(dynamic value) { for (var element in multiLiveModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} multiLiveModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in multiLiveModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} multiLiveModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in multiLiveModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} multiLiveModelObj.value.dropdownItemList2.refresh(); } 
 }
