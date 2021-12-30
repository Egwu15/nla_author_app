import 'package:flutter/material.dart';

class CustLoadingIndicator extends StatefulWidget {
  const CustLoadingIndicator({Key? key, this.size = 20.0}) : super(key: key);
  final double size;
  @override
  _CustLoadingIndicatorState createState() => _CustLoadingIndicatorState();
}

class _CustLoadingIndicatorState extends State<CustLoadingIndicator> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size,
      width: widget.size,
      child: CircularProgressIndicator.adaptive(
        strokeWidth: 5.0,
        backgroundColor: Colors.white,
      ),
    );
  }
}
