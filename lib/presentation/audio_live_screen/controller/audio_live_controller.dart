import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/audio_live_screen/models/audio_live_model.dart';

/// A controller class for the AudioLiveScreen.
///
/// This class manages the state of the AudioLiveScreen, including the
/// current audioLiveModelObj
class AudioLiveController extends GetxController {
  Rx<AudioLiveModel> audioLiveModelObj = AudioLiveModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  onSelected(dynamic value) {
    for (var element in audioLiveModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    audioLiveModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element in audioLiveModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    audioLiveModelObj.value.dropdownItemList1.refresh();
  }
}
