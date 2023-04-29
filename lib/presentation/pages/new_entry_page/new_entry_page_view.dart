import 'package:flutter/material.dart';

import '../../../utils/extensions.dart';
import '../home_page/widgets/app_bar.dart';
import 'widgets/enter_date.dart';
import 'widgets/enter_results.dart';

class NewEntryPageView extends StatelessWidget {
  const NewEntryPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: context.l10n.newEntryAppBarTitle),
      body: PageView(
        children: const [
          EnterDate(),
          EnterResults(),
        ],
      ),
    );
  }
}
