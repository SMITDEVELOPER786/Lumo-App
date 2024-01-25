import 'streamlevel_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [stream_level_dialog],
/// and is typically used to hold data that is passed between different parts of the application.
class StreamLevelModel {Rx<List<StreamlevelItemModel>> streamlevelItemList = Rx(List.generate(3,(index) => StreamlevelItemModel()));

 }
