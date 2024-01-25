import '../../../core/app_export.dart';/// This class is used in the [chatbubbles1_item_widget] screen.
class Chatbubbles1ItemModel {Chatbubbles1ItemModel({this.chatBubblesText, this.id, }) { chatBubblesText = chatBubblesText  ?? Rx("Chat Bubbles");id = id  ?? Rx(""); }

Rx<String>? chatBubblesText;

Rx<String>? id;

 }
