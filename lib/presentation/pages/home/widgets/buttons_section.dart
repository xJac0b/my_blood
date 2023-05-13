import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

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
          onPressed: () => context.router.push(const EntryListRoute()),
          label: 'showFullListButton'.tr(),
        ),
        const SizedBox(height: 20),
        MenuButton(
          onPressed: () => context.router.push(EntryFormRoute()),
          label: 'addNewEntryButton'.tr(),
        ),
      ],
    );
  }
}
