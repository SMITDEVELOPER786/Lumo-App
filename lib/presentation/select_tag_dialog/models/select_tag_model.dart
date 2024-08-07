import 'frame_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [select_tag_dialog],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectTagModel {
  Rx<List<FrameItemModel>> frameItemList =
      Rx(List.generate(7, (index) => FrameItemModel()));
}
