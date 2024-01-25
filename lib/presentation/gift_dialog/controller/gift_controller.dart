import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/gift_dialog/models/gift_model.dart';

/// A controller class for the GiftDialog.
///
/// This class manages the state of the GiftDialog, including the
/// current giftModelObj
class GiftController extends GetxController {
  Rx<GiftModel> giftModelObj = GiftModel().obs;
}
