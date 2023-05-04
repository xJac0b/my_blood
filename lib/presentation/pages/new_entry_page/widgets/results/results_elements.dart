import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/new_entry/new_entry_bloc.dart';
import '../../../../../domain/new_entry/constants/results_units.dart';
import '../../../../../domain/new_entry/constants/units.dart';
import '../../../../../domain/new_entry/unit_value.dart';
import '../../../../core/widgets/label_large.dart';
import '../fields/custom_dropdown_button.dart';
import '../fields/value_field.dart';

class ResultsElements extends StatelessWidget {
  const ResultsElements({
    Key? key,
    required this.categoryKey,
    required this.elementsKeys,
    required this.unitValues,
  }) : super(key: key);
  final String categoryKey;
  final List<String> elementsKeys;
  final List<UnitValue> unitValues;
  @override
  Widget build(BuildContext context) {
    final rows = <Widget>[];
    for (final i in elementsKeys) {
      rows
        ..add(Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: LabelLarge(i)),
            ValueField(
              onChanged: (newValue) => context.read<NewEntryBloc>().add(
                    NewEntryEvent.valueChanged(
                        categoryKey, i, double.tryParse(newValue) ?? 0),
                  ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 90,
              child: CustomDropdownButton(
                  items: resultsUnits[categoryKey]![i]!
                      .map((e) => units[e])
                      .toList(),
                  onChanged: (v) {}),
            ),
          ],
        ))
        ..add(const Divider());
    }
    return Column(children: rows);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('category', categoryKey))
      ..add(IterableProperty<String>('elements', elementsKeys))
      ..add(IterableProperty<UnitValue>('unitValues', unitValues));
  }
}
