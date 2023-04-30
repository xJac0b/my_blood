import 'package:flutter/material.dart';

import '../../../../utils/extensions.dart';
import '../../../core/constants/blood_test_units.dart';
import '../../../core/widgets/default_padding.dart';
import 'fields/custom_dropdown_button.dart';
import 'results/hematology_fields.dart';
import 'results/selectable_fields.dart';

class EnterResults extends StatelessWidget {
  const EnterResults({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      child: SingleChildScrollView(
        child: Column(children: [
          CustomDropdownButton(items: [
            context.l10n.hematology,
            context.l10n.biochemistry,
            context.l10n.thyroidHormones
          ]),
          // HematologyFields(),
          const HematologyFields(),

          SelectableFields(list: biochemistryResults),
          SelectableFields(list: thyroidResults)
          // ElevatedButton(
          //   onPressed: () {},
          //   child: const Row(
          //     children: [
          //       Icon(Icons.add_circle, color: Colors.green),
          //       SizedBox(width: 20),
          //       LabelLarge('field')
          //     ],
          //   ),
          // ),
          // ElevatedButton(
          //   onPressed: () {},
          //   child: const Row(
          //     children: [
          //       Icon(Icons.add_circle, color: Colors.green),
          //       SizedBox(width: 20),
          //       LabelLarge('category')
          //     ],
          //   ),
          // ),
        ]),
      ),
    );
  }
}
