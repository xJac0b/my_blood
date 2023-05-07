import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/authentication/form/form/date_field.dart';
import '../../../core/widgets/authentication/form/form/gender_dropdown.dart';
import '../../../core/widgets/authentication/form/form/name_form_field.dart';
import '../../../core/widgets/authentication/form/form/wide_button.dart';

class FillDataForm extends StatelessWidget {
  const FillDataForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const NameFormField(),
          const NameFormField(firstName: false),
          const GenderDropdown(),
          DateField(hintText: 'dateOfBirth'.tr()),
          const SizedBox(height: 10),
          WideButton(
            onPressed: () {},
            label: 'next'.tr(),
          ),
        ],
      ),
    );
  }
}
