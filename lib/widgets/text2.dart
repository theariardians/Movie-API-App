import 'package:flutter/material.dart';

class Text2 extends StatelessWidget {
  final String text;
  final double fontSize;
  final bool isBold;
  final int maxLines;
  const Text2({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.isBold = false,
    this.maxLines = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: Theme.of(context).primaryTextTheme.bodyText2?.color,
        fontWeight: isBold ? FontWeight.bold : null,
      ),
      maxLines: maxLines,
    );
  }
}
