import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton({
    super.key,
    required this.items,
    this.prefixIcon,
    this.onChanged,
  });

  final List<String> items;
  final Widget? prefixIcon;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: DropdownButtonFormField(
        decoration: const InputDecoration(
          enabledBorder: UnderlineInputBorder(),
          focusedBorder: UnderlineInputBorder(),
          errorBorder: UnderlineInputBorder(),
        ),
        isExpanded: true,
        value: items.first,
        items: items
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Text(e),
              ),
            )
            .toList(),
        onChanged: onChanged ?? (_) {},
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(IterableProperty<String>('items', items))
      ..add(ObjectFlagProperty<Function(String? p1)?>.has(
          'onChanged', onChanged));
  }
}
