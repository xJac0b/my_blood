import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/new_entry/new_entry_bloc.dart';
import '../../../../utils/extensions.dart';
import '../../../core/widgets/default_padding.dart';
import 'fields/custom_dropdown_button.dart';
import 'fields/wide_button.dart';

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
          WideButton(
              label: context.l10n.next,
              onPressed: () => context
                  .read<NewEntryBloc>()
                  .add(const NewEntryEvent.pageChanged(2)))
          // HematologyFields(),
          // const HematologyFields(),

          // SelectableFields(list: biochemistryResults),
          // SelectableFields(list: thyroidResults)
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
