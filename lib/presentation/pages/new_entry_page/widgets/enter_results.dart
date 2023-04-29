import 'package:flutter/material.dart';

import '../../../../utils/extensions.dart';
import '../../../core/widgets/default_padding.dart';
import '../../../core/widgets/label_large.dart';
import 'fields/custom_dropdown_button_form_field.dart';

class EnterResults extends StatelessWidget {
  const EnterResults({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      child: Column(children: [
        CustomDropdownButton(items: [
          context.l10n.hematology,
          context.l10n.biochemistry,
          context.l10n.urinalysis,
          context.l10n.endocrinology
        ]),
        ElevatedButton(
          onPressed: () {},
          child: const Row(
            children: [
              Icon(Icons.add_circle, color: Colors.green),
              SizedBox(width: 20),
              LabelLarge('field')
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Row(
            children: [
              Icon(Icons.add_circle, color: Colors.green),
              SizedBox(width: 20),
              LabelLarge('category')
            ],
          ),
        ),
      ]),
    );
  }
}
