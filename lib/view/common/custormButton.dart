import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nla_author_app/view/common/custormLoadingIndicator.dart';

class CustormButton extends StatefulWidget {
  const CustormButton(
      {Key? key,
      required this.isLoading,
      required this.func,
      required this.text})
      : super(key: key);
  final bool isLoading;
  final Function func;
  final String text;
  @override
  _CustormButtonState createState() => _CustormButtonState();
}

class _CustormButtonState extends State<CustormButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (!widget.isLoading) widget.func();
      },
      child: widget.isLoading
          ? CustLoadingIndicator()
          : Text(
              widget.text,
              style: GoogleFonts.roboto(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
      style: OutlinedButton.styleFrom(
        fixedSize: Size(Get.width, 50),
      ),
    );
  }
}
