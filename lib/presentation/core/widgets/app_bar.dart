import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
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
          PopupMenuButton(
              onSelected: (value) => value == 'logout'
                  ? context.read<AuthBloc>().add(const AuthEvent.signedOut())
                  : null,
              itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 'logout',
                      child: Text('Logout'),
                    ),
                  ])
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
