import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'add_entry_page_view.dart';

@RoutePage()
class AddEntryPage extends StatelessWidget {
  const AddEntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AddEntryPageView();
  }
}
