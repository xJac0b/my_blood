import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'custom_text_field.dart';

class DateField extends StatefulWidget {
  const DateField({
    Key? key,
    required this.hintText,
    this.dateChanged,
    this.initialValue,
  }) : super(key: key);
  final String hintText;
  final Function(DateTime date)? dateChanged;
  final DateTime? initialValue;
  @override
  State<DateField> createState() => _DateFieldState();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('hintText', hintText))
      ..add(ObjectFlagProperty<Function(DateTime date)?>.has(
          'dateChanged', dateChanged))
      ..add(DiagnosticsProperty<DateTime?>('initialValue', initialValue));
  }
}

class _DateFieldState extends State<DateField> {
  TextEditingController dateInput = TextEditingController();
  @override
  void initState() {
    super.initState();
    if (widget.initialValue != null) {
      dateInput.text = DateFormat('dd MMMM, yyyy').format(widget.initialValue!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
        onTap: () async {
          final now = DateTime.now();
          final pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime(now.year, now.month, now.day),
            firstDate: DateTime(1900),
            lastDate: DateTime(now.year, now.month, now.day),
          );
          if (pickedDate != null) {
            final formattedDate =
                DateFormat('dd MMMM, yyyy').format(pickedDate);
            setState(() {
              dateInput.text = formattedDate;
              if (widget.dateChanged != null) {
                widget.dateChanged!(pickedDate);
              }
            });
          }
        },
        readOnly: true,
        controller: dateInput,
        prefixIcon: const Icon(Icons.calendar_today),
        hintText: widget.hintText);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty<TextEditingController>('dateinput', dateInput));
  }
}
