import 'package:flutter/material.dart';
import '../../../utils/extensions.dart';
import '../../core/widgets/default_padding.dart';
import '../../core/widgets/headline_large.dart';
import '../widgets/app_bar.dart';
import '../widgets/buttons_section.dart';
import '../widgets/menu_button.dart';
import '../widgets/results_section.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DefaultPadding(child: CustomAppBar()),
          DefaultPadding(
              child: HeadlineLarge('${context.l10n.greeting} John 👋')),
          const ResultsSection(),
          const DefaultPadding(
            child: ButtonsSection(),
          ),
        ],
      ),
    );
  }
}
