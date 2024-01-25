import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/stream_level_dialog/models/stream_level_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the StreamLevelDialog.
///
/// This class manages the state of the StreamLevelDialog, including the
/// current streamLevelModelObj
class StreamLevelController extends GetxController {
  Rx<StreamLevelModel> streamLevelModelObj = StreamLevelModel().obs;
}
