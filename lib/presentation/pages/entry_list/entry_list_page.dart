import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/entries/entry_list/entry_list_bloc.dart';
import '../../../injection.dart';
import 'entry_list_page_view.dart';

@RoutePage()
class EntryListPage extends StatelessWidget {
  const EntryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<EntryListBloc>()..add(const EntryListEvent.started()),
      child: const EntryListPageView(),
    );
  }
}
