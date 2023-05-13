import 'package:auto_route/auto_route.dart';
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
    this.actions,
  }) : super(key: key);
  final String title;
  final Widget? leading;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    debugPrint('context.router.currentPath: ${context.router.currentPath}');
    return AppBar(
        centerTitle: true,
        leading: leading,
        title: HeadlineSmall(
          title,
        ),
        actions: context.router.currentPath == '/'
            ? [
                PopupMenuButton(
                    onSelected: (value) => value == 'logout'
                        ? context
                            .read<AuthBloc>()
                            .add(const AuthEvent.signedOut())
                        : null,
                    itemBuilder: (context) => [
                          const PopupMenuItem(
                            value: 'logout',
                            child: Text('Logout'),
                          ),
                        ])
              ]
            : actions);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('text', title))
      ..add(IterableProperty<Widget>('actions', actions))
      ..add(DiagnosticsProperty<Widget?>('leading', leading));
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
