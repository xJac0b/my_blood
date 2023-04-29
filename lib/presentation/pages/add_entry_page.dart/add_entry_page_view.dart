import 'package:flutter/material.dart';

import '../../../utils/extensions.dart';
import '../home_page/widgets/app_bar.dart';
import 'widgets/enter_date.dart';
import 'widgets/enter_results.dart';

class AddEntryPageView extends StatelessWidget {
  const AddEntryPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: context.l10n.addNewEntryAppBarTitle),
      body: PageView(
        children: const [
          EnterDate(),
          EnterResults(),
        ],
      ),
    );
  }
}
