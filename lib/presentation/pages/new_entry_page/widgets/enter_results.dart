import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/new_entry/new_entry_bloc.dart';
import '../../../../domain/new_entry/results.dart';
import '../../../../gen/assets.gen.dart';
import '../../../core/widgets/default_padding.dart';
import '../../../core/widgets/headline_medium.dart';
import 'custom_single_child_scroll_view.dart';
import 'fields/wide_button.dart';
import 'results/results_category.dart';
import 'results/results_elements.dart';

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
            const HeadlineMedium('Enter results using the plus buttons'),
            Expanded(child: Assets.images.addResult.svg()),
          ],
          for (var i in results.order) ...[
            ResultsCategory(
              items: {
                for (var e in results.categoriesLeft()..insert(0, i))
                  e.toString().tr(): e.toString()
              },
            ),
            ResultsElements(
              categoryKey: i,
              elementsKeys: results.results[i]!.keys.toList(),
              unitValues: results.results[i]!.values.toList(),
            ),
          ],
          if (!results.noElements)
            WideButton(
                label: 'next'.tr(),
                onPressed: () => context
                    .read<NewEntryBloc>()
                    .add(const NewEntryEvent.pageChanged(2)))
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
