import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../application/entries/entry_form/entry_form_bloc.dart';
import '../../../../../core/widgets/authentication/form/custom_dropdown_button.dart';

class ResultsCategory extends StatelessWidget {
  const ResultsCategory({
    Key? key,
    required this.items,
  }) : super(key: key);

  final Map<String, String> items;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDropdownButton(
              items: items.keys.toList(),
              onChanged: (newValue) => newValue != null
                  ? context.read<EntryFormBloc>().add(
                        EntryFormEvent.categoryChanged(
                            items.values.first, items[newValue]!),
                      )
                  : null),
        ),
        IconButton(
          onPressed: () => context
              .read<EntryFormBloc>()
              .add(EntryFormEvent.categoryRemoved(items.values.first)),
          icon: const Icon(Icons.delete, color: Colors.red),
        )
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Map<String, String>>('items', items));
  }
}
