import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/live_two_bottomsheet/models/live_two_model.dart';

/// A controller class for the LiveTwoBottomsheet.
///
/// This class manages the state of the LiveTwoBottomsheet, including the
/// current liveTwoModelObj
class LiveTwoController extends GetxController {
  Rx<LiveTwoModel> liveTwoModelObj = LiveTwoModel().obs;
}
