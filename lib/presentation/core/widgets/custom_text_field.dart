import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.controller,
    this.keyboardType,
    this.hintText = '',
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.onTap,
    this.readOnly = false,
  }) : super(key: key);

  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final Function()? onTap;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
      ..add(DiagnosticsProperty<TextEditingController?>(
          'controller', controller));
  }
}
