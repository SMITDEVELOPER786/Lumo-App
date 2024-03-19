import 'package:muhammad_zubair_s_application4/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [verification_seven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class VerificationSevenModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Male",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Female",
    ),
  ]);

  Rx<DateTime>? selectedChooseYourDate = Rx(DateTime.now());

  Rx<String> chooseYourDate = Rx("Choose your date of birth");
}
