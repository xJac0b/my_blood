import 'package:flutter/material.dart';
import '../../../utils/extensions.dart';
import '../../core/widgets/headline_large.dart';
import '../widgets/app_bar.dart';
import '../widgets/menu_button.dart';
import '../widgets/results_section.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(title: context.l10n.helloWorld),
          const SizedBox(height: 20),
          const HeadlineLarge('Hi, John 👋'),
          const SizedBox(height: 20),
          const ResultsSection(),
          const MenuButton(
            label: 'Show full list',
          ),
          const MenuButton(
            label: 'Add new entry',
          ),
        ],
      ),
    );
  }
}
