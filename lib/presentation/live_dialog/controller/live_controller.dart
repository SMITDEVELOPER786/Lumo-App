import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/live_dialog/models/live_model.dart';

/// A controller class for the LiveDialog.
///
/// This class manages the state of the LiveDialog, including the
/// current liveModelObj
class LiveController extends GetxController {
  Rx<LiveModel> liveModelObj = LiveModel().obs;
}
