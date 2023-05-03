import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../application/new_entry/new_entry_bloc.dart';
import '../../../../domain/new_entry/value_objects.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../utils/extensions.dart';
import '../../../core/widgets/default_padding.dart';
import '../../../core/widgets/headline_medium.dart';
import 'fields/title_field.dart';
import 'fields/wide_button.dart';

class EnterTitle extends StatelessWidget {
  const EnterTitle({
    Key? key,
    this.initialValue,
  }) : super(key: key);
  final NewEntryTitle? initialValue;
  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      child: Column(children: [
        HeadlineMedium(context.l10n.enterTitleHeadline),
        const SizedBox(height: 20),
        TitleField(
            initialValue: initialValue?.value.fold((_) => null, id),
            onChanged: (title) {
              context
                  .read<NewEntryBloc>()
                  .add(NewEntryEvent.titleChanged(title));
            }),
        Expanded(child: Assets.images.title.svg()),
        WideButton(label: context.l10n.submit, onPressed: () {})
      ]),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<NewEntryTitle?>('initialValue', initialValue));
  }
}
