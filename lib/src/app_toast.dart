import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppToast {
  static Future<bool?> showToast({
    required String msg,
    bool longTime = true,
    int time = 2,
    ToastGravity gravity = ToastGravity.SNACKBAR,
    Color? bgColor,
    Color? txtColor,
    double fontSize = 14.0,
    bool isErrorMsg = false,
  }) {
    return Fluttertoast.showToast(
      msg: msg,
      toastLength: longTime ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT,
      gravity: gravity,
      timeInSecForIosWeb: time,
      textColor: txtColor ?? Colors.white,
      backgroundColor: isErrorMsg
          ? Colors.redAccent
          : bgColor ?? Colors.blueGrey.shade800,
      fontSize: fontSize,
    );
  }

  static void showSnackBar({
    required BuildContext context,
    required String msg,
    Color? bgColor,
  }) {
    final SnackBar snackBar = SnackBar(
      content: Text(msg),
      backgroundColor: bgColor,
    );

    // Find the Scaffold in the Widget tree and use it to show a SnackBar!
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
