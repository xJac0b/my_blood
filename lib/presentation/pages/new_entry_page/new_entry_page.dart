import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'new_entry_page_view.dart';

@RoutePage()
class NewEntryPage extends StatelessWidget {
  const NewEntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const NewEntryPageView();
  }
}
