import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/widgets/custom_text_field.dart';

class ValueField extends StatelessWidget {
  const ValueField({
    Key? key,
    this.onChanged,
    this.initialValue,
  }) : super(key: key);
  final Function(String)? onChanged;
  final double? initialValue;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 60,
      child: CustomTextField(
        initialValue: initialValue?.toString(),
        onChanged: onChanged,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp('[0-9]+[,.]{0,1}[0-9]*')),
          TextInputFormatter.withFunction(
            (oldValue, newValue) => newValue.copyWith(
              text: newValue.text.replaceAll('.', ','),
            ),
          ),
        ],
        keyboardType: TextInputType.number,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(ObjectFlagProperty<Function?>.has('onChanged', onChanged))
      ..add(DoubleProperty('initialValue', initialValue));
  }
}
