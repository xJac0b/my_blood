import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../utils/extensions.dart';
import 'custom_text_field.dart';
import 'default_padding.dart';

class DateField extends StatefulWidget {
  const DateField({
    super.key,
  });

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  TextEditingController dateInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
        onTap: () async {
          final pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
          );
          if (pickedDate != null) {
            final formattedDate =
                DateFormat('dd MMMM, yyyy').format(pickedDate);
            setState(() {
              dateInput.text = formattedDate;
            });
          }
        },
        readOnly: true,
        controller: dateInput,
        prefixIcon: const Icon(Icons.calendar_today),
        hintText: context.l10n.dateFieldHint);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty<TextEditingController>('dateinput', dateInput));
  }
}
