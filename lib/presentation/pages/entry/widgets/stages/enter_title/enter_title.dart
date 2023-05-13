import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../../../application/entries/entry_form/entry_form_bloc.dart';
import '../../../../../../domain/entries/value_objects.dart';
import '../../../../../../gen/assets.gen.dart';
import '../../../../../core/widgets/authentication/form/wide_button.dart';
import '../../../../../core/widgets/default_padding.dart';
import '../../../../../core/widgets/text/headline_medium.dart';
import '../../../../../router/router.gr.dart';
import 'title_field.dart';

class EnterTitle extends StatelessWidget {
  const EnterTitle({
    Key? key,
    required this.initialValue,
  }) : super(key: key);
  final EntryTitle initialValue;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EntryFormBloc, EntryFormState>(
      listener: (context, state) {
        state.entryFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    failure.maybeMap(
                      orElse: () => 'serverError'.tr(),
                    ),
                  ),
                ),
              );
            },
            (_) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'saveSuccess'.tr(),
                  ),
                ),
              );
              context.router.replace(const EntryListRoute());
            },
          ),
        );
      },
      builder: (context, state) {
        return DefaultPadding(
          child: Column(
            children: [
              HeadlineMedium('enterTitleHeadline'.tr()),
              const SizedBox(height: 20),
              TitleField(
                initialValue: initialValue.value.fold((_) => null, id),
                onChanged: (title) {
                  context
                      .read<EntryFormBloc>()
                      .add(EntryFormEvent.titleChanged(title.trim()));
                },
                validator: (_) => context
                    .read<EntryFormBloc>()
                    .state
                    .entry
                    .title
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        exceedingLength: (_) => 'exceedingTitleLength'.tr(
                            namedArgs: {'length': '${EntryTitle.maxLength}'}),
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
                    context.read<EntryFormBloc>().state.entry.title.isValid(),
                child: WideButton(
                  label: 'submit'.tr(),
                  onPressed: () => context
                      .read<EntryFormBloc>()
                      .add(const EntryFormEvent.saved()),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<EntryTitle?>('initialValue', initialValue));
  }
}
