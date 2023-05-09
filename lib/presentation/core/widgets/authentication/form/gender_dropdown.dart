import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/auth/user/user_bloc.dart';
import 'custom_dropdown_button.dart';

class GenderDropdown extends StatefulWidget {
  const GenderDropdown({super.key, required this.maleInitial});
  final bool maleInitial;
  @override
  State<GenderDropdown> createState() => _GenderDropdownState();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('maleInitial', maleInitial));
  }
}

class _GenderDropdownState extends State<GenderDropdown> {
  String? selected;

  @override
  Widget build(BuildContext context) {
    if (widget.maleInitial) {
      selected ??= 'genderMale'.tr();
    } else {
      selected ??= 'genderFemale'.tr();
    }

    return CustomDropdownButton(
      value: selected,
      items: ['genderMale'.tr(), 'genderFemale'.tr()],
      prefixIcon: genderPrefixIcon(context, selected),
      onChanged: (el) {
        setState(() {
          selected = el;
        });
        if (el != null) {
          context.read<UserBloc>().add(
              UserEvent.genderChanged(male: selected == 'genderMale'.tr()));
        }
      },
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
