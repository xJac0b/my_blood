import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.controller,
      this.keyboardType,
      this.hintText = '',
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText = false,
      this.onTap,
      this.readOnly = false,
      this.onChanged,
      this.initialValue,
      this.inputFormatters,
      this.validator,
      this.maxLength})
      : super(key: key);

  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final Function()? onTap;
  final Function(String)? onChanged;
  final bool readOnly;
  final String? initialValue;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      validator: validator,
      inputFormatters: inputFormatters,
      initialValue: initialValue,
      onChanged: onChanged,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      keyboardType: keyboardType,
      onTap: onTap,
      readOnly: readOnly,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('hintText', hintText))
      ..add(DiagnosticsProperty<TextInputType>('keyboardType', keyboardType))
      ..add(DiagnosticsProperty<bool>('obscureText', obscureText))
      ..add(ObjectFlagProperty<Function()?>.has('onTap', onTap))
      ..add(DiagnosticsProperty<bool?>('readOnly', readOnly))
      ..add(
          DiagnosticsProperty<TextEditingController?>('controller', controller))
      ..add(
          ObjectFlagProperty<Function(String p1)?>.has('onChanged', onChanged))
      ..add(StringProperty('intialValue', initialValue))
      ..add(IterableProperty<TextInputFormatter>(
          'inputFormatters', inputFormatters))
      ..add(
          ObjectFlagProperty<Function(String? p1)?>.has('validator', validator))
      ..add(IntProperty('maxLength', maxLength));
  }
}
