import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../application/new_entry/new_entry_bloc.dart';
import '../../../../domain/new_entry/value_objects.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../utils/extensions.dart';
import '../../../core/widgets/date_field.dart';
import '../../../core/widgets/default_padding.dart';
import '../../../core/widgets/headline_medium.dart';
import 'fields/wide_button.dart';

class EnterDate extends StatelessWidget {
  const EnterDate({
    Key? key,
    this.initialValue,
  }) : super(key: key);
  final NewEntryDate? initialValue;
  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      child: Column(children: [
        HeadlineMedium(context.l10n.enterDateHeadline),
        const SizedBox(height: 20),
        DateField(
            initialValue: initialValue?.value.fold((_) => null, id),
            hintText: context.l10n.dateFieldHint,
            dateChanged: (date) {
              context.read<NewEntryBloc>().add(NewEntryEvent.dateChanged(date));
            }),
        Expanded(child: Assets.images.datePicker.svg()),
        WideButton(
            label: context.l10n.next,
            onPressed: () => context
                .read<NewEntryBloc>()
                .add(const NewEntryEvent.pageChanged(1)))
      ]),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<NewEntryDate>('initialValue', initialValue));
  }
}
