import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../utils/extensions.dart';
import '../../core/widgets/app_bar.dart';
import '../../core/widgets/date_field.dart';
import '../../core/widgets/default_padding.dart';
import 'widgets/result_card.dart';
import 'widgets/search_field.dart';

class ResultListPageView extends StatelessWidget {
  const ResultListPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          title: context.l10n.resultListAppBarTitle,
          leading: IconButton(
            icon: const Icon(Icons.home, color: Colors.black),
            onPressed: () => context.router.pop(),
          ),
        ),
        body: DefaultPadding(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SearchField(),
                const SizedBox(height: 20),
                const DateField(),
                const SizedBox(height: 20),
                for (int i = 0; i < 10; i++) const ResultCard()
              ],
            ),
          ),
        ));
  }
}
