import 'package:flutter/material.dart';

class CurvedFormField extends StatelessWidget {
  const CurvedFormField({Key? key, required this.controller}) : super(key: key);
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(),
    );
  }
}
