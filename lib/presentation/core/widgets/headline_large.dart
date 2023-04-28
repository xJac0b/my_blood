import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HeadlineLarge extends StatelessWidget {
  const HeadlineLarge(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineLarge);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('text', text));
  }
}
