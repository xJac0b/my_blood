import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/new_entry/new_entry_bloc.dart';
import '../../../utils/extensions.dart';
import '../../core/widgets/app_bar.dart';
import 'widgets/enter_date.dart';
import 'widgets/enter_results.dart';
import 'widgets/enter_title.dart';

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
            leading: IconButton(
              icon: const Icon(Icons.home, color: Colors.black),
              onPressed: () => context.router.pop(),
            ),
          ),
          body: PageView(
            onPageChanged: (ind) => context
                .read<NewEntryBloc>()
                .add(NewEntryEvent.pageChanged(ind)),
            controller: _controller,
            children: [
              EnterDate(
                initialValue: state.date,
              ),
              const EnterResults(),
              EnterTitle(initialValue: state.title),
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
