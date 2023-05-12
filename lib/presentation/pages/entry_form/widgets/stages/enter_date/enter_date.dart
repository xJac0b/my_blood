import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../../../application/entries/entry_form/entry_form_bloc.dart';
import '../../../../../../domain/entries/value_objects.dart';
import '../../../../../../gen/assets.gen.dart';
import '../../../../../core/widgets/authentication/form/date_field.dart';
import '../../../../../core/widgets/authentication/form/wide_button.dart';
import '../../../../../core/widgets/default_padding.dart';
import '../../../../../core/widgets/text/headline_medium.dart';

class EnterDate extends StatelessWidget {
  const EnterDate({
    Key? key,
    this.initialValue,
  }) : super(key: key);
  final EntryDate? initialValue;
  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      child: Column(children: [
        HeadlineMedium('enterDateHeadline'.tr()),
        const SizedBox(height: 20),
        DateField(
            validator: (_) =>
                context.read<EntryFormBloc>().state.entry.date.value.fold(
                      (f) => f.maybeMap(
                        invalidDate: (_) => 'invalidDate'.tr(),
                        orElse: () => 'invalidDate'.tr(),
                      ),
                      (_) => null,
                    ),
            initialValue: initialValue?.value.fold((_) => null, id),
            hintText: 'dateFieldHint'.tr(),
            dateChanged: (date) {
              context
                  .read<EntryFormBloc>()
                  .add(EntryFormEvent.dateChanged(date));
            }),
        Expanded(child: Assets.images.datePicker.svg()),
        WideButton(
            label: 'next'.tr(),
            onPressed: () => context
                .read<EntryFormBloc>()
                .add(const EntryFormEvent.pageChanged(EntryFormPages.results)))
      ]),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<EntryDate>('initialValue', initialValue));
  }
}
