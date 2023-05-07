import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../default_padding.dart';
import 'custom_text_field.dart';

class NameFormField extends StatelessWidget {
  const NameFormField({
    super.key,
    this.firstName = true,
  });
  final bool firstName;

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      child: CustomTextField(
        hintText: firstName ? 'firstName'.tr() : 'lastName'.tr(),
        keyboardType: TextInputType.name,
        prefixIcon: const Icon(Icons.person),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('firstName', firstName));
  }
}
