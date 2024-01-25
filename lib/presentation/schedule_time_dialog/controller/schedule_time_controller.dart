import 'package:muhammad_zubair_s_application4/core/app_export.dart';import 'package:muhammad_zubair_s_application4/presentation/schedule_time_dialog/models/schedule_time_model.dart';/// A controller class for the ScheduleTimeDialog.
///
/// This class manages the state of the ScheduleTimeDialog, including the
/// current scheduleTimeModelObj
class ScheduleTimeController extends GetxController {Rx<ScheduleTimeModel> scheduleTimeModelObj = ScheduleTimeModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

onSelected(dynamic value) { for (var element in scheduleTimeModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} scheduleTimeModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in scheduleTimeModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} scheduleTimeModelObj.value.dropdownItemList1.refresh(); } 
 }
