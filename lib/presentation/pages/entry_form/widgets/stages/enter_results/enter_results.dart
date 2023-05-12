import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../application/entries/entry_form/entry_form_bloc.dart';
import '../../../../../../domain/entries/results.dart';
import '../../../../../../gen/assets.gen.dart';
import '../../../../../core/widgets/authentication/form/wide_button.dart';
import '../../../../../core/widgets/default_padding.dart';
import '../../../../../core/widgets/text/headline_medium.dart';
import 'custom_single_child_scroll_view.dart';
import 'results_category.dart';
import 'results_elements.dart';

class EnterResults extends StatelessWidget {
  const EnterResults({super.key, required this.results});
  final Results results;
  @override
  Widget build(BuildContext context) {
    return CustomSingleChildScrollView(
      scrollView: !results.noCategories,
      child: DefaultPadding(
        child: Column(children: [
          if (results.noCategories) ...[
            HeadlineMedium('enterResultsHeadline'.tr()),
            Expanded(child: Assets.images.addResult.svg()),
          ],
          for (var i in results.categoriesOrder) ...[
            ResultsCategory(
              items: {
                for (var e in results.categoriesLeft()..insert(0, i))
                  e.toString().tr(): e.toString()
              },
            ),
            ResultsElements(
                categoryKey: i,
                elements: results.results[i]!,
                elementsOrder: results.elementsOrder[i]!,
                elementsLeft: results.elementsLeft(i)),
            if (results.elementsLeft(i).isNotEmpty)
              IconButton(
                  onPressed: () => context.read<EntryFormBloc>().add(
                      EntryFormEvent.elementAdded(
                          i, results.elementsLeft(i).first)),
                  icon: const Icon(Icons.add))
          ],
          if (!results.noElements)
            WideButton(
                label: 'next'.tr(),
                onPressed: () => context.read<EntryFormBloc>().add(
                    const EntryFormEvent.pageChanged(EntryFormPages.title)))
        ]),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Results>('results', results));
  }
}
