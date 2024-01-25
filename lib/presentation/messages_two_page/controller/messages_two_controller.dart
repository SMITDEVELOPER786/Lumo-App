import 'package:muhammad_zubair_s_application4/core/app_export.dart';import 'package:muhammad_zubair_s_application4/presentation/messages_two_page/models/messages_two_model.dart';import 'package:flutter/material.dart';/// A controller class for the MessagesTwoPage.
///
/// This class manages the state of the MessagesTwoPage, including the
/// current messagesTwoModelObj
class MessagesTwoController extends GetxController {MessagesTwoController(this.messagesTwoModelObj);

TextEditingController searchController = TextEditingController();

Rx<MessagesTwoModel> messagesTwoModelObj;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
