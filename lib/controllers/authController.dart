import 'dart:convert';

import 'package:get/route_manager.dart';
import 'package:http/http.dart' as http;
import 'package:nla_author_app/services/hiveStorage.dart';
import 'package:nla_author_app/view/Pages/homepage.dart';
import 'package:nla_author_app/view/common/custormsnackbar.dart';
import '../env.dart';

class Auth {
  var _url = Uri.parse("${Env.baseUrl}/users/login");

  login({required String email, required String password}) async {
    try {
      var response =
          await http.post(_url, body: {'email': email, 'password': password});
      print(response.body);
      print(response.statusCode);
      if (response.statusCode == 200) {
        print(jsonDecode(response.body)['data']);
        await HiveStorageMain().addToken(jsonDecode(response.body)['data']);
        Get.to(() => HomePage());
      } else {
        errorSnackBar(title: "Error", message: response.body);
      }
    } catch (e) {
      print(e);
      errorSnackBar(
          title: "Error",
          message: "Error connecting to network, please check your connection");
    }
  }
}
