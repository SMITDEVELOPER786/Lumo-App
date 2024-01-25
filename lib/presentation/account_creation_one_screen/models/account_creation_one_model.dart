import 'package:muhammad_zubair_s_application4/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [account_creation_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AccountCreationOneModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Pakistan",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Austraila",
    ),
    SelectionPopupModel(
      id: 3,
      title: "South Africa",
    )
  ]);
}
