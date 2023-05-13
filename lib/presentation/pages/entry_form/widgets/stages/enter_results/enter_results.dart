import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../application/entries/entry_form/entry_form_bloc.dart';
import '../../../../../../gen/assets.gen.dart';
import '../../../../../core/widgets/authentication/form/wide_button.dart';
import '../../../../../core/widgets/default_padding.dart';
import '../../../../../core/widgets/text/headline_medium.dart';
import 'custom_single_child_scroll_view.dart';
import 'results_category.dart';
import 'results_elements.dart';

class EnterResults extends StatelessWidget {
  const EnterResults({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EntryFormBloc, EntryFormState>(
      builder: (context, state) {
        return CustomSingleChildScrollView(
          scrollView: !state.entry.results.noCategories,
          child: DefaultPadding(
            child: Column(children: [
              if (state.entry.results.noCategories) ...[
                HeadlineMedium('enterResultsHeadline'.tr()),
                Expanded(child: Assets.images.addResult.svg()),
              ],
              for (var i in state.entry.results.categoriesOrder) ...[
                ResultsCategory(
                  items: {
                    for (var e
                        in state.entry.results.categoriesLeft()..insert(0, i))
                      e.toString().tr(): e.toString()
                  },
                ),
                ResultsElements(
                    categoryKey: i,
                    elements: state.entry.results.results[i]!,
                    elementsOrder: state.entry.results.elementsOrder[i]!,
                    elementsLeft: state.entry.results.elementsLeft(i)),
                if (state.entry.results.elementsLeft(i).isNotEmpty)
                  IconButton(
                      onPressed: () => context.read<EntryFormBloc>().add(
                          EntryFormEvent.elementAdded(
                              i, state.entry.results.elementsLeft(i).first)),
                      icon: const Icon(Icons.add))
              ],
              if (!state.entry.results.noElements)
                WideButton(
                    label: 'next'.tr(),
                    onPressed: () => context.read<EntryFormBloc>().add(
                        const EntryFormEvent.pageChanged(EntryFormPages.title)))
            ]),
          ),
        );
      },
    );
  }
}
