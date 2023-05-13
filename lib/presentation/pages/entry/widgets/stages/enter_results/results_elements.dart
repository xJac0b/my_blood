import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../../../application/entries/entry_form/entry_form_bloc.dart';
import '../../../../../../domain/entries/constants/results_units.dart';
import '../../../../../../domain/entries/constants/units.dart';
import '../../../../../../domain/entries/unit_value.dart';
import '../../../../../core/widgets/authentication/form/custom_dropdown_button.dart';
import '../../../../../core/widgets/authentication/form/number_field.dart';

class ResultsElements extends StatelessWidget {
  const ResultsElements({
    Key? key,
    required this.categoryKey,
    required this.elements,
    required this.elementsLeft,
    required this.elementsOrder,
  }) : super(key: key);
  final String categoryKey;
  final Map<String, UnitValue> elements;
  final List<String> elementsLeft, elementsOrder;
  @override
  Widget build(BuildContext context) {
    final rows = <Widget>[];
    for (final i in elementsOrder) {
      rows
        ..add(Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: CustomDropdownButton(
                  items: List.of(elementsLeft)..insert(0, i),
                  onChanged: (newValue) => newValue != null
                      ? context.read<EntryFormBloc>().add(
                            EntryFormEvent.elementChanged(
                                categoryKey, i, newValue),
                          )
                      : null),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 60,
              height: 60,
              child: NumberField(
                initialValue: elements[i]!.value,
                onChanged: (newValue) => context.read<EntryFormBloc>().add(
                      EntryFormEvent.valueChanged(
                          categoryKey, i, double.tryParse(newValue) ?? 0),
                    ),
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 90,
              child: CustomDropdownButton(
                items: resultsUnits[categoryKey]![i]!
                    .filter((t) => t != elements[i]!.unitIndex)
                    .map((e) => units[e])
                    .toList()
                  ..insert(0, units[elements[i]!.unitIndex]),
                onChanged: (newValue) => newValue != null
                    ? context.read<EntryFormBloc>().add(
                        EntryFormEvent.unitChanged(
                            categoryKey, i, units.indexOf(newValue)))
                    : null,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () => context.read<EntryFormBloc>().add(
                    EntryFormEvent.elementRemoved(categoryKey, i),
                  ),
            )
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
      ..add(DiagnosticsProperty<Map<String, UnitValue>>('elements', elements))
      ..add(IterableProperty<String>('elementsLeft', elementsLeft))
      ..add(IterableProperty<String>('elementsOrder', elementsOrder));
  }
}
