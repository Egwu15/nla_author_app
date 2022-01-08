import 'package:flutter/material.dart';
import 'package:nla_author_app/services/validator.dart';

class CustOutLinedTextField extends StatefulWidget {
  const CustOutLinedTextField({
    Key? key,
    required this.controller,
    required this.hint,
    this.obscure = false,
    this.keyboardType = TextInputType.multiline,
    this.minLine = 1,
    this.maxLine = 1,
    this.isReadOnly = false,
  }) : super(key: key);
  final TextEditingController controller;
  final String hint;
  final bool obscure;
  final TextInputType keyboardType;
  final int minLine;
  final int maxLine;
  final bool isReadOnly;
  @override
  _CustOutLinedTextFieldState createState() => _CustOutLinedTextFieldState();
}

class _CustOutLinedTextFieldState extends State<CustOutLinedTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(widget.hint),
      ),
      controller: widget.controller,
      maxLines: widget.maxLine,
      minLines: widget.minLine,
      obscureText: widget.obscure,
      keyboardType: widget.keyboardType,
      readOnly: widget.isReadOnly,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }
}
