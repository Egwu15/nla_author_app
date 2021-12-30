import 'dart:convert';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:nla_author_app/services/hiveStorage.dart';

import '../env.dart';

class PastQueController extends GetxController {
  @override
  void onInit() {
    // TODO: make api call
    super.onInit();
  }

  getCategories() async{
    String _token = HiveStorageMain().getToken();
     var _url = Uri.parse("${Env.baseUrl}/obj/categories");
     var response = await http.get(_url, headers: {"Authorization": _token});
     print(jsonDecode(response.body)["data"]);
     return jsonDecode(response.body)["data"];


  }
}
