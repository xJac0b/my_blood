import 'package:flutter/material.dart';

import '../../../../../utils/extensions.dart';
import '../../../../core/widgets/custom_text_field.dart';

class TitleField extends StatelessWidget {
  const TitleField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      prefixIcon: const Icon(Icons.title),
      hintText: context.l10n.titleFieldHint,
    );
  }
}
