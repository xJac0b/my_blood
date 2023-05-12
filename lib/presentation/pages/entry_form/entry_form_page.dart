import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/entries/entry_form/entry_form_bloc.dart';
import '../../../injection.dart';
import 'entry_form_page_view.dart';

@RoutePage()
class EntryFormPage extends StatelessWidget {
  const EntryFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EntryFormBloc>(),
      child: EntryFormPageView(),
    );
  }
}
