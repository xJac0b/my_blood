import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../utils/extensions.dart';

class LabelLarge extends StatelessWidget {
  const LabelLarge(this.text, {this.color, super.key});
  final String text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: color ?? context.colors.primary,
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
