import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/new_entry/new_entry_bloc.dart';
import '../../core/widgets/app_bar.dart';
import 'widgets/back_arrow_icon.dart';
import 'widgets/enter_date.dart';
import 'widgets/enter_results.dart';
import 'widgets/enter_title.dart';
import 'widgets/fields/floating_plus_button.dart';
import 'widgets/home_icon.dart';

class NewEntryPageView extends StatelessWidget {
  NewEntryPageView({super.key});
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewEntryBloc, NewEntryState>(
      listener: (context, state) {
        if (state.pageIndex != _controller.page?.round()) {
          _controller.animateToPage(state.pageIndex,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut);
        }
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: CustomAppBar(
            title: 'newEntryAppBarTitle'.tr(),
            leading: state.pageIndex == 0
                ? const HomeIcon()
                : BackArrowIcon(
                    onPressed: () => context
                        .read<NewEntryBloc>()
                        .add(NewEntryEvent.pageChanged(state.pageIndex - 1)),
                  ),
          ),
          body: PageView(
            onPageChanged: (ind) => context
                .read<NewEntryBloc>()
                .add(NewEntryEvent.pageChanged(ind)),
            controller: _controller,
            children: [
              EnterDate(
                initialValue: state.newEntry.date,
              ),
              EnterResults(results: state.newEntry.results),
              EnterTitle(initialValue: state.newEntry.title),
            ],
          ),
          floatingActionButton: state.pageIndex == 1
              ? FloatingPlusButton(onPressed: () {
                  final categoriesLeft =
                      state.newEntry.results.categoriesLeft();
                  if (categoriesLeft.isEmpty) {
                    return;
                  }
                  context
                      .read<NewEntryBloc>()
                      .add(NewEntryEvent.categoryAdded(categoriesLeft[0]));
                })
              : null,
        );
      },
    );
  }
}
