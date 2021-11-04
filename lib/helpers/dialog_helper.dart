import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogHelper {
  static showDialog({String message = 'Something went wrong'}) {
    Get.dialog(Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(message),
          ElevatedButton(
            onPressed: () {
              hideDialog();
            },
            child: Text('Okay'),
          ),
        ],
      ),
    ));
  }

  static void hideDialog() {
    if (Get.isDialogOpen!) {
      Get.back();
    }
  }
}
