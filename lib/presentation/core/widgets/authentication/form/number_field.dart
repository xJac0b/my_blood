import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'custom_text_field.dart';

class NumberField extends StatelessWidget {
  const NumberField({
    Key? key,
    this.onChanged,
    this.initialValue,
    this.hintText = '',
    this.prefixIcon,
    this.validator,
  }) : super(key: key);
  final Function(String)? onChanged;
  final double? initialValue;
  final String hintText;
  final Icon? prefixIcon;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      validator: validator,
      prefixIcon: prefixIcon,
      hintText: hintText,
      initialValue: initialValue?.toString(),
      onChanged: onChanged,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[0-9]+[,.]{0,1}[0-9]*')),
        TextInputFormatter.withFunction(
          (oldValue, newValue) => newValue.copyWith(
            text: newValue.text.replaceAll(',', '.'),
          ),
        ),
      ],
      keyboardType: TextInputType.number,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(ObjectFlagProperty<Function?>.has('onChanged', onChanged))
      ..add(DoubleProperty('initialValue', initialValue))
      ..add(StringProperty('hintText', hintText))
      ..add(DiagnosticsProperty<Icon?>('prefixIcon', prefixIcon))
      ..add(ObjectFlagProperty<String? Function(String? p1)?>.has(
          'validator', validator));
  }
}
