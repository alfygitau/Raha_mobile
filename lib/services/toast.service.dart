import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class ToastService {
  void showToast(String message, {bool isError = false, bool isInfo = false}) {
    Fluttertoast.showToast(
      msg: message,
      toastLength:
          isError
              ? Toast.LENGTH_LONG
              : isInfo
              ? Toast.LENGTH_LONG
              : Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      backgroundColor:
          isError
              ? Colors.red
              : isInfo
              ? Colors.grey
              : Colors.green,
      textColor: Colors.white,
      timeInSecForIosWeb: 5,
    );
  }
}
