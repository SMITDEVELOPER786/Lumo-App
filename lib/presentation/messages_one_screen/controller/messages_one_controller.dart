import 'package:muhammad_zubair_s_application4/core/app_export.dart';import 'package:muhammad_zubair_s_application4/presentation/messages_one_screen/models/messages_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the MessagesOneScreen.
///
/// This class manages the state of the MessagesOneScreen, including the
/// current messagesOneModelObj
class MessagesOneController extends GetxController {TextEditingController messageController = TextEditingController();

Rx<MessagesOneModel> messagesOneModelObj = MessagesOneModel().obs;

@override void onClose() { super.onClose(); messageController.dispose(); } 
 }
