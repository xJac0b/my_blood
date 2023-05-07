import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/new_entry/new_entry_bloc.dart';
import 'new_entry_page_view.dart';

@RoutePage()
class NewEntryPage extends StatelessWidget {
  const NewEntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewEntryBloc(),
      child: NewEntryPageView(),
    );
  }
}
