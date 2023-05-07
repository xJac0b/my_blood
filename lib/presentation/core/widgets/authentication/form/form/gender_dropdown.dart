import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../default_padding.dart';
import 'custom_dropdown_button.dart';

class GenderDropdown extends StatefulWidget {
  const GenderDropdown({super.key});

  @override
  State<GenderDropdown> createState() => _GenderDropdownState();
}

class _GenderDropdownState extends State<GenderDropdown> {
  String? selected;

  @override
  Widget build(BuildContext context) {
    selected ??= 'genderMale'.tr();

    return DefaultPadding(
      child: CustomDropdownButton(
        items: ['genderMale'.tr(), 'genderFemale'.tr(), 'genderOther'.tr()],
        prefixIcon: genderPrefixIcon(context, selected),
        onChanged: (el) {
          setState(() {
            selected = el;
          });
        },
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('selected', selected));
  }
}

Widget genderPrefixIcon(BuildContext context, String? current) {
  if (current == 'genderMale'.tr()) {
    return const Icon(Icons.male);
  }
  if (current == 'genderFemale'.tr()) {
    return const Icon(Icons.female);
  }

  return const Icon(Icons.transgender);
}
