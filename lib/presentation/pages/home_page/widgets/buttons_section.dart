import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../utils/extensions.dart';
import '../../../router/router.gr.dart';
import 'menu_button.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MenuButton(
          onPressed: () => context.router.push(const ResultListRoute()),
          label: context.l10n.showFullListButton,
        ),
        const SizedBox(height: 20),
        MenuButton(
          onPressed: () => context.router.push(const NewEntryRoute()),
          label: context.l10n.addNewEntryButton,
        ),
        const SizedBox(height: 20),
        MenuButton(
          onPressed: () => context.router.push(const ProgressRoute()),
          label: context.l10n.trackProgressButton,
        ),
      ],
    );
  }
}
