import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HeadlineMedium extends StatelessWidget {
  const HeadlineMedium(this.text, {this.color, super.key});
  final String text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w400,
        color: color ?? Colors.black,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('text', text))
      ..add(ColorProperty('color', color));
  }
}
