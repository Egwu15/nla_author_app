import 'package:get/route_manager.dart';
import 'package:flutter/material.dart';

custormSnackBar({required String title, required String message}) {
  return Get.showSnackbar(
    GetSnackBar(
      title: title,
      message: message,
      duration: Duration(seconds: 3),
      backgroundColor: Colors.green,
    ),
  );
}
errorSnackBar({required String title, required String message}) {
  return Get.showSnackbar(
    GetSnackBar(
      title: title,
      message: message,
      duration: Duration(seconds: 3),
      backgroundColor: Colors.red,
    ),
  );
}
