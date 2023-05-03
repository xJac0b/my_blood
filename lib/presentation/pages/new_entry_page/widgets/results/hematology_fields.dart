import 'package:flutter/material.dart';

import '../../../../../domain/new_entry/constants/results_units.dart';
import '../../../../../domain/new_entry/constants/units.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/label_large.dart';
import '../fields/custom_dropdown_button.dart';

class HematologyFields extends StatelessWidget {
  const HematologyFields({super.key});

  @override
  Widget build(BuildContext context) {
    final rows = <Widget>[];
    for (final i in resultsUnits['hematology']!.entries) {
      rows
        ..add(Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: LabelLarge(i.key)),
            const SizedBox(
              width: 100,
              height: 60,
              child: CustomTextField(
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 90,
              child: CustomDropdownButton(
                  items: i.value.map((e) => units[e]).toList(),
                  onChanged: (v) {}),
            ),
          ],
        ))
        ..add(const Divider());
    }
    return Column(children: rows);
  }
}
