import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key, this.hintText = ''});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: hintText,
      prefixIcon: const Icon(Icons.search),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('hintText', hintText));
  }
}
