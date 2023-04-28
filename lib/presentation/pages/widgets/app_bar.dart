import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/headline_medium.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.title = ''});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        leading: const CircleAvatar(
          backgroundColor: Color.fromARGB(255, 201, 208, 213),
        ),
        title: HeadlineMedium(
          title,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
        ]);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('text', title));
  }
}
