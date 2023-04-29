import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../utils/extensions.dart';

class LabelLarge extends StatelessWidget {
  const LabelLarge(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: context.textTheme.labelLarge);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('text', text));
  }
}
