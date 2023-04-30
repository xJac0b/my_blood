import 'package:flutter/material.dart';

import '../../../core/widgets/custom_text_field.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(
      hintText: 'Search',
      prefixIcon: Icon(Icons.search),
    );
  }
}
