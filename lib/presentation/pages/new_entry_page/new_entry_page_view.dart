import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../utils/extensions.dart';
import '../../core/widgets/app_bar.dart';
import 'widgets/enter_date.dart';
import 'widgets/enter_results.dart';
import 'widgets/enter_title.dart';

class NewEntryPageView extends StatelessWidget {
  const NewEntryPageView({super.key});

  @override
  Widget build(BuildContext context) {
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
        children: const [
          EnterDate(),
          EnterResults(),
          EnterTitle(),
        ],
      ),
    );
  }
}
