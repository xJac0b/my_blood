import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/entries/entry_list/entry_list_bloc.dart';
import '../../../core/widgets/default_padding.dart';
import '../../../core/widgets/text/headline_medium.dart';
import '../../entry_list/widgets/critical_failure_display_widget.dart';
import '../../entry_list/widgets/result_card.dart';

class ResultsSection extends StatelessWidget {
  const ResultsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EntryListBloc, EntryListState>(
      builder: (context, state) => state.map(
        initial: (_) => Container(),
        loading: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        loadSuccess: (state) => state.entries.isNotEmpty
            ? Container(
                padding: const EdgeInsets.only(bottom: 20),
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultPadding(
                        child:
                            HeadlineMedium('${'resultsSectionTitle'.tr()} 📝')),
                    Container(
                      height: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final entry = state.entries[index];

                          return SizedBox(
                              width: 300, child: ResultCard(entry: entry));
                        },
                        itemCount: state.entries.length,
                      ),
                    ),
                  ],
                ))
            : const SizedBox(height: 30),
        loadFailure: (state) => CriticalFailureDisplay(
          failure: state.entryFailure,
        ),
      ),
    );
  }
}
