import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../utils/extensions.dart';

class HeadlineMedium extends StatelessWidget {
  const HeadlineMedium(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: context.textTheme.headlineMedium);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('text', text));
  }
}
