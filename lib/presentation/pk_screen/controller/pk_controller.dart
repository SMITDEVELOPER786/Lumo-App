import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/pk_screen/models/pk_model.dart';

/// A controller class for the PkScreen.
///
/// This class manages the state of the PkScreen, including the
/// current pkModelObj
class PkController extends GetxController {
  Rx<PkModel> pkModelObj = PkModel().obs;
}
