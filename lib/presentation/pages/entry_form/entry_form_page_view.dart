import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/entries/entry_form/entry_form_bloc.dart';
import '../../core/widgets/app_bar.dart';
import 'widgets/app_bar_icons/back_arrow_icon.dart';
import 'widgets/app_bar_icons/home_icon.dart';
import 'widgets/buttons/floating_plus_button.dart';
import 'widgets/stages/enter_date/enter_date.dart';
import 'widgets/stages/enter_results/enter_results.dart';
import 'widgets/stages/enter_title/enter_title.dart';

class EntryFormPageView extends StatelessWidget {
  EntryFormPageView({super.key});
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EntryFormBloc, EntryFormState>(
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
            title: state.editMode
                ? 'updateEntryFormAppBarTitle'.tr()
                : 'newEntryFormAppBarTitle'.tr(),
            leading: state.pageIndex == EntryFormPages.date
                ? const HomeIcon()
                : BackArrowIcon(
                    onPressed: () => context.read<EntryFormBloc>().add(
                        EntryFormEvent.pageChanged(
                            EntryFormPages.values[state.pageIndex.index - 1])),
                  ),
          ),
          body: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (ind) => context
                  .read<EntryFormBloc>()
                  .add(EntryFormEvent.pageChanged(EntryFormPages.values[ind])),
              controller: _controller,
              children: [
                if (!state.ready)
                  const Center(child: CircularProgressIndicator())
                else ...const [
                  EnterDate(),
                  EnterResults(),
                  EnterTitle(),
                ]
              ],
            ),
          ),
          floatingActionButton: state.pageIndex == EntryFormPages.results &&
                  state.entry.results.categoriesLeft().isNotEmpty
              ? FloatingPlusButton(onPressed: () {
                  final categoriesLeft = state.entry.results.categoriesLeft();
                  if (categoriesLeft.isEmpty) {
                    return;
                  }
                  context
                      .read<EntryFormBloc>()
                      .add(EntryFormEvent.categoryAdded(categoriesLeft[0]));
                })
              : null,
        );
      },
    );
  }
}
