import '../../../core/app_export.dart';

/// This class is used in the [chatbubbles_item_widget] screen.
class ChatbubblesItemModel {
  ChatbubblesItemModel({
    this.chatBubblesText,
    this.IMG,
    this.id,
  }) {
    chatBubblesText = chatBubblesText ?? Rx("Chat Bubbles");
    var image = IMG ?? Rx(ImageConstant.imageNotFound);

    id = id ?? Rx("");
  }
  var IMG;
  Rx<String>? chatBubblesText;

  Rx<String>? id;
}
