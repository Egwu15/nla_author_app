import 'package:get/route_manager.dart';

custormSnackBar({required String title, required String message}) {
  return Get.showSnackbar(
    GetSnackBar(
      title: title,
      message: message,
      duration: Duration(seconds: 3),
    ),
  );
}
