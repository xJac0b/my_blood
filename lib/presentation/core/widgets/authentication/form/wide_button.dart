import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../text/label_large.dart';

class WideButton extends StatelessWidget {
  const WideButton({super.key, required this.label, required this.onPressed});
  final String label;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
        ),
        onPressed: onPressed,
        child: LabelLarge(label));
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('label', label))
      ..add(ObjectFlagProperty<Function()>.has('onPressed', onPressed));
  }
}
