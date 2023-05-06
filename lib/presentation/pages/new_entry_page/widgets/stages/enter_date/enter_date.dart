import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../../../application/new_entry/new_entry_bloc.dart';
import '../../../../../../domain/new_entry/value_objects.dart';
import '../../../../../../gen/assets.gen.dart';
import '../../../../../core/widgets/date_field.dart';
import '../../../../../core/widgets/default_padding.dart';
import '../../../../../core/widgets/headline_medium.dart';
import '../../buttons/wide_button.dart';

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
        HeadlineMedium('enterDateHeadline'.tr()),
        const SizedBox(height: 20),
        DateField(
            validator: (_) =>
                context.read<NewEntryBloc>().state.newEntry.date.value.fold(
                      (f) => f.maybeMap(
                        invalidDate: (_) => 'invalidDate'.tr(),
                        orElse: () => 'invalidDate'.tr(),
                      ),
                      (_) => null,
                    ),
            initialValue: initialValue?.value.fold((_) => null, id),
            hintText: 'dateFieldHint'.tr(),
            dateChanged: (date) {
              context.read<NewEntryBloc>().add(NewEntryEvent.dateChanged(date));
            }),
        Expanded(child: Assets.images.datePicker.svg()),
        WideButton(
            label: 'next'.tr(),
            onPressed: () => context.read<NewEntryBloc>().add(
                const NewEntryEvent.pageChanged(NewEntryFormPages.results)))
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
