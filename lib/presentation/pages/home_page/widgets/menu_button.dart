import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/label_large.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    this.label = '',
    this.onPressed,
  });
  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [LabelLarge(label), const Icon(Icons.arrow_forward_ios)],
          ),
        ));
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('label', label))
      ..add(ObjectFlagProperty<void Function()?>.has('onPressed', onPressed));
  }
}
