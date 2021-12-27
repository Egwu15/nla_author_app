import 'package:flutter/material.dart';

class CustOutLinedTextField extends StatefulWidget {
  const CustOutLinedTextField(
      {Key? key,
      required this.controller,
      required this.hint,
      this.obscure = false})
      : super(key: key);
  final TextEditingController controller;
  final String hint;
  final bool obscure;
  @override
  _CustOutLinedTextFieldState createState() => _CustOutLinedTextFieldState();
}

class _CustOutLinedTextFieldState extends State<CustOutLinedTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: widget.hint,),
      controller: widget.controller,
      obscureText: widget.obscure,
    );
  }
}
