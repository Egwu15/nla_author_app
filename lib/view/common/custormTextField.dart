import 'package:flutter/material.dart';

class CustOutLinedTextField extends StatefulWidget {
  const CustOutLinedTextField({
    Key? key,
    required this.controller,
    required this.hint,
    this.obscure = false,
    this.keyboardType = TextInputType.multiline,
    this.minLine = 1,
    this.maxLine = 1,
  }) : super(key: key);
  final TextEditingController controller;
  final String hint;
  final bool obscure;
  final TextInputType keyboardType;
  final int minLine;
  final int maxLine;
  @override
  _CustOutLinedTextFieldState createState() => _CustOutLinedTextFieldState();
}

class _CustOutLinedTextFieldState extends State<CustOutLinedTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(label: Text(widget.hint)),
      controller: widget.controller,
      maxLines: widget.maxLine,
      minLines: widget.minLine,
      obscureText: widget.obscure,
      keyboardType: widget.keyboardType,
    );
  }
}
