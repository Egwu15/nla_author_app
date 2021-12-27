import 'package:get/route_manager.dart';
import 'package:http/http.dart' as http;
import 'package:nla_author_app/view/Pages/homepage.dart';
import 'package:nla_author_app/view/common/snackbar.dart';
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
        Get.to(() => HomePage());
      } else {
        custormSnackBar(title: "Error", message: response.body);
      }
    } catch (e) {
      custormSnackBar(
          title: "Error",
          message: "Error connecting to network, please check your connection");
    }
  }
}
