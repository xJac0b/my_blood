import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/app_bar.dart';
import '../../core/widgets/default_padding.dart';
import '../../core/widgets/headline_large.dart';
import 'widgets/buttons_section.dart';
import 'widgets/results_section.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const DefaultPadding(
                child: CustomAppBar(
              leading: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 201, 208, 213),
              ),
            )),
            DefaultPadding(child: HeadlineLarge('${'greeting'.tr()} John 👋')),
            const ResultsSection(),
            const DefaultPadding(
              child: ButtonsSection(),
            ),
          ],
        ),
      ),
    );
  }
}
