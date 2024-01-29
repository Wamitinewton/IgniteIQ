import 'package:flutter/widgets.dart';

class TextUtil extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontweight;

  TextUtil(
      {super.key,
      required this.text,
      required this.color,
      required this.fontSize,
      required this.fontweight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: fontSize, fontWeight: fontweight),
    );
  }
}
