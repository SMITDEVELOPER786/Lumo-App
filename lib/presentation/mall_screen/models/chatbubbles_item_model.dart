import '../../../core/app_export.dart';/// This class is used in the [chatbubbles_item_widget] screen.
class ChatbubblesItemModel {ChatbubblesItemModel({this.chatBubblesText, this.id, }) { chatBubblesText = chatBubblesText  ?? Rx("Chat Bubbles");id = id  ?? Rx(""); }

Rx<String>? chatBubblesText;

Rx<String>? id;

 }
