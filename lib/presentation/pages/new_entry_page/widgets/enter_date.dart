import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../utils/extensions.dart';
import '../../../core/widgets/date_field.dart';
import '../../../core/widgets/default_padding.dart';
import '../../../core/widgets/headline_medium.dart';
import 'fields/wide_button.dart';

class EnterDate extends StatelessWidget {
  const EnterDate({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      child: Column(children: [
        HeadlineMedium(context.l10n.enterDateHeadline),
        const SizedBox(height: 20),
        DateField(hintText: context.l10n.dateFieldHint),
        Expanded(child: Assets.images.datePicker.svg()),
        WideButton(label: context.l10n.next, onPressed: () {})
      ]),
    );
  }
}
