import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../utils/extensions.dart';
import '../../../core/widgets/default_padding.dart';
import '../../../core/widgets/headline_medium.dart';
import '../../../core/widgets/label_large.dart';
import 'fields/date_field.dart';

class EnterDate extends StatelessWidget {
  const EnterDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: DefaultPadding(
      child: Column(children: [
        const HeadlineMedium('Enter date of test'),
        const SizedBox(height: 20),
        const DateField(),
        // Assets.images.datePicker.svg(),
        // SvgPicture.asset('assets/images/date_picker.svg'),
        Expanded(child: Assets.images.datePicker.svg()),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(50),
            ),
            onPressed: () =>
                {/*call block new state to move to next page in pageview*/},
            child: LabelLarge(context.l10n.next))
      ]),
    ));
  }
}
