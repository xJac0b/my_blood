import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/new_entry/new_entry_bloc.dart';
import '../../core/widgets/app_bar.dart';
import 'widgets/app_bar_icons/back_arrow_icon.dart';
import 'widgets/app_bar_icons/home_icon.dart';
import 'widgets/buttons/floating_plus_button.dart';
import 'widgets/stages/enter_date/enter_date.dart';
import 'widgets/stages/enter_results/enter_results.dart';
import 'widgets/stages/enter_title/enter_title.dart';

class NewEntryPageView extends StatelessWidget {
  NewEntryPageView({super.key});
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewEntryBloc, NewEntryState>(
      listener: (context, state) {
        if (state.pageIndex.index != _controller.page?.round()) {
          _controller.animateToPage(state.pageIndex.index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut);
        }
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: CustomAppBar(
            title: 'newEntryAppBarTitle'.tr(),
            leading: state.pageIndex == NewEntryFormPages.date
                ? const HomeIcon()
                : BackArrowIcon(
                    onPressed: () => context.read<NewEntryBloc>().add(
                        NewEntryEvent.pageChanged(NewEntryFormPages
                            .values[state.pageIndex.index - 1])),
                  ),
          ),
          body: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (ind) => context.read<NewEntryBloc>().add(
                  NewEntryEvent.pageChanged(NewEntryFormPages.values[ind])),
              controller: _controller,
              children: [
                EnterDate(
                  initialValue: state.newEntry.date,
                ),
                EnterResults(results: state.newEntry.results),
                EnterTitle(initialValue: state.newEntry.title),
              ],
            ),
          ),
          floatingActionButton: state.pageIndex == NewEntryFormPages.results
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
