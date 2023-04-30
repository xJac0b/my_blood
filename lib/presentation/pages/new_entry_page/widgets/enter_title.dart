import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../utils/extensions.dart';
import '../../../core/widgets/default_padding.dart';
import '../../../core/widgets/headline_medium.dart';
import 'fields/title_field.dart';
import 'fields/wide_button.dart';

class EnterTitle extends StatelessWidget {
  const EnterTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      child: Column(children: [
        HeadlineMedium(context.l10n.enterTitleHeadline),
        const SizedBox(height: 20),
        const TitleField(),
        Expanded(child: Assets.images.title.svg()),
        WideButton(label: context.l10n.submit, onPressed: () {})
      ]),
    );
  }
}
