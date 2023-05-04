import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/new_entry/new_entry_bloc.dart';
import '../../../utils/extensions.dart';
import '../../core/widgets/app_bar.dart';
import 'widgets/back_arrow_icon.dart';
import 'widgets/enter_date.dart';
import 'widgets/enter_results.dart';
import 'widgets/enter_title.dart';
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
            title: context.l10n.newEntryAppBarTitle,
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
              const EnterResults(),
              EnterTitle(initialValue: state.newEntry.title),
            ],
          ),
          floatingActionButton: state.pageIndex == 1
              ? FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.add),
                )
              : null,
        );
      },
    );
  }
}
