import 'dart:convert';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:nla_author_app/services/hiveStorage.dart';
import 'package:nla_author_app/view/common/custormsnackbar.dart';

import '../env.dart';

class PastQueController extends GetxController {
  @override
  void onInit() {
    // TODO: make api call
    super.onInit();
  }

  String _token = HiveStorageMain().getToken();
  getCourse() async {
    try {
      var _url = Uri.parse("${Env.baseUrl}/obj/categories");
      var response = await http.get(_url, headers: {"Authorization": _token});
      print(jsonDecode(response.body)["data"]);
      if (response.statusCode == 200) {
        return jsonDecode(response.body)["data"];
      } else {
        errorSnackBar(title: "Error", message: response.body);
      }
    } catch (e) {
      errorSnackBar(
          title: "Error",
          message: "Error connecting to network, please check your connection");
    }
  }

  addOnj({
    required String question,
    required String optiona,
    required String optionb,
    required String optionc,
    required String optiond,
    required String course,
  }) async {
    try {
      var _url = Uri.parse("${Env.baseUrl}/obj");
      var response = await http.post(_url, body: {
        'question': question,
        'option_a': optiona,
        'option_b': optionb,
        'option_c': optionc,
        'option_d': optiond,
        'course': course,
      }, headers: {
        "Authorization": _token
      });
      print(response.body);
      print(response.statusCode);
      if (response.statusCode == 200) {
        custormSnackBar(title: "Succes", message: "Question Added");
        return true;
      } else {
        errorSnackBar(title: "Error", message: response.body);
        return false;
      }
    } catch (e) {
      print(e);
      errorSnackBar(
          title: "Error",
          message: "Error connecting to network, please check your connection");
    }
    
  }
}
