import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/account_creation_two_dialog/models/account_creation_two_model.dart';

/// A controller class for the AccountCreationTwoDialog.
///
/// This class manages the state of the AccountCreationTwoDialog, including the
/// current accountCreationTwoModelObj
class AccountCreationTwoController extends GetxController {
  Rx<AccountCreationTwoModel> accountCreationTwoModelObj =
      AccountCreationTwoModel().obs;
}
