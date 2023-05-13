import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/entries/entry/entry_bloc.dart';
import '../../../domain/entries/entry.dart';
import '../../../injection.dart';
import 'entry_page_view.dart';

@RoutePage()
class EntryPage extends StatelessWidget {
  const EntryPage({super.key, required this.entry});
  final Entry entry;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EntryBloc>(),
      child: EntryFormPageView(entry: entry),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Entry>('entry', entry));
  }
}
