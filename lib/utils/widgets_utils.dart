import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../themes/main_colors.dart';

class WidgetsUtils {
  static void showAwesomeDialog({
    DialogType? dialogType,
    required String message,
  }) {
    AwesomeDialog(
      context: Get.context!,
      dialogType: dialogType ?? DialogType.success,
      padding: const EdgeInsets.only(
        bottom: 24,
        right: 10,
        left: 10,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 6.0,
            bottom: 24,
          ),
          child: Text(
            message,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: darkPage,
            ),
          ),
        ),
      ),
      width: Get.width * 0.95,
      btnOkOnPress: () {},
    ).show();
  }
}
