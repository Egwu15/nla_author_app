import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nla_author_app/controllers/authController.dart';
import 'package:nla_author_app/services/themeService.dart';
import 'package:nla_author_app/view/common/custormButton.dart';
import 'package:nla_author_app/view/common/custormLoadingIndicator.dart';
import 'package:nla_author_app/view/common/custormTextField.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isLoading = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: () => ThemeServce().switchTheme()),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.10),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 15.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Login",
                  style: GoogleFonts.robotoSlab(
                    fontSize: 35.0,
                  ),
                ),
              ),
              SizedBox(
                height: 73.0,
              ),
              CustOutLinedTextField(
                controller: _emailController,
                hint: "Email address",
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 25.0,
              ),
              CustOutLinedTextField(
                  controller: _passwordController,
                  hint: "Password",
                  obscure: true,
                  keyboardType: TextInputType.visiblePassword),
              SizedBox(
                height: 35.0,
              ),

              CustormButton(
                  isLoading: _isLoading,
                  func: () {
                    setState(() {
                      _isLoading = true;
                    });
                    Auth()
                        .login(
                            email: _emailController.text,
                            password: _passwordController.text)
                        .then((_) {
                      setState(() {
                        _isLoading = false;
                      });
                    });
                  },
                  text: "LOGIN")
              
            ]),
          ),
        ),
      ),
    );
  }
}
