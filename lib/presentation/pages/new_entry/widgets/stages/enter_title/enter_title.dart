import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../../../application/new_entry/new_entry_bloc.dart';
import '../../../../../../domain/new_entry/value_objects.dart';
import '../../../../../../gen/assets.gen.dart';
import '../../../../../core/widgets/authentication/form/wide_button.dart';
import '../../../../../core/widgets/default_padding.dart';
import '../../../../../core/widgets/text/headline_medium.dart';
import 'title_field.dart';

class EnterTitle extends StatelessWidget {
  const EnterTitle({
    Key? key,
    required this.initialValue,
  }) : super(key: key);
  final NewEntryTitle initialValue;
  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      child: Column(children: [
        HeadlineMedium('enterTitleHeadline'.tr()),
        const SizedBox(height: 20),
        TitleField(
          initialValue: initialValue.value.fold((_) => null, id),
          onChanged: (title) {
            context
                .read<NewEntryBloc>()
                .add(NewEntryEvent.titleChanged(title.trim()));
          },
          validator: (_) =>
              context.read<NewEntryBloc>().state.newEntry.title.value.fold(
                    (f) => f.maybeMap(
                      exceedingLength: (_) => 'exceedingTitleLength'.tr(
                          namedArgs: {'length': '${NewEntryTitle.maxLength}'}),
                      empty: (_) => 'emptyTitle'.tr(),
                      orElse: () => 'invalidTitle'.tr(),
                    ),
                    (_) => null,
                  ),
        ),
        Expanded(child: Assets.images.title.svg()),
        Visibility(
            maintainSize: true,
            maintainState: true,
            maintainAnimation: true,
            visible:
                context.read<NewEntryBloc>().state.newEntry.title.isValid(),
            child: WideButton(label: 'submit'.tr(), onPressed: () {}))
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
