import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/live_one_screen/models/live_one_model.dart';

/// A controller class for the LiveOneScreen.
///
/// This class manages the state of the LiveOneScreen, including the
/// current liveOneModelObj
class LiveOneController extends GetxController {
  Rx<LiveOneModel> liveOneModelObj = LiveOneModel().obs;
}
