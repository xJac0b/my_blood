import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/extensions.dart';
import '../../../../core/widgets/custom_text_field.dart';

class TitleField extends StatelessWidget {
  const TitleField({
    Key? key,
    this.onChanged,
    this.initialValue,
  }) : super(key: key);
  final Function(String)? onChanged;
  final String? initialValue;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      initialValue: initialValue,
      onChanged: onChanged,
      prefixIcon: const Icon(Icons.title),
      hintText: context.l10n.titleFieldHint,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          ObjectFlagProperty<Function(String p1)?>.has('onChanged', onChanged))
      ..add(StringProperty('initialValue', initialValue));
  }
}
