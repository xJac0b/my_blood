import 'package:flutter/material.dart';

import '../../../utils/extensions.dart';
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
          label: context.l10n.showFullListButton,
        ),
        const SizedBox(height: 20),
        MenuButton(
          label: context.l10n.addNewEntryButton,
        ),
        const SizedBox(height: 20),
        MenuButton(
          label: context.l10n.trackProgressButton,
        ),
      ],
    );
  }
}
