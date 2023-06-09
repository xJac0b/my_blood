import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/entries/entry_form/entry_form_bloc.dart';
import '../../../domain/entries/entry.dart';
import '../../../injection.dart';
import 'entry_form_page_view.dart';

@RoutePage()
class EntryFormPage extends StatelessWidget {
  const EntryFormPage({super.key, this.entry});
  final Entry? entry;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<EntryFormBloc>()..add(EntryFormEvent.initialized(entry)),
      child: EntryFormPageView(),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Entry?>('entry', entry));
  }
}
