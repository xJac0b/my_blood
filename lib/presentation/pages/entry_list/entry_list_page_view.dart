import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/entries/entry_list/entry_list_bloc.dart';
import '../../core/widgets/app_bar.dart';
import '../../core/widgets/default_padding.dart';
import 'widgets/critical_failure_display_widget.dart';
import 'widgets/result_card.dart';

class EntryListPageView extends StatelessWidget {
  const EntryListPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: 'resultListAppBarTitle'.tr(),
        leading: IconButton(
          icon: const Icon(Icons.home, color: Colors.black),
          onPressed: () => context.router.pop(),
        ),
      ),
      body: DefaultPadding(
        child: BlocBuilder<EntryListBloc, EntryListState>(
          builder: (context, state) => state.map(
            initial: (_) => const SizedBox(),
            loading: (_) => const Center(child: CircularProgressIndicator()),
            loadSuccess: (state) => ListView.builder(
              itemBuilder: (context, index) {
                final entry = state.entries[index];

                return ResultCard(entry: entry);
              },
              itemCount: state.entries.length,
            ),
            loadFailure: (state) {
              debugPrint(state.entryFailure.toString());
              return CriticalFailureDisplay(
                failure: state.entryFailure,
              );
            },
          ),
        ),
      ),
    );
  }
}
