import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'text/headline_small.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.title = '',
    this.leading,
  }) : super(key: key);
  final String title;
  final Widget? leading;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        leading: leading,
        title: HeadlineSmall(
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

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
