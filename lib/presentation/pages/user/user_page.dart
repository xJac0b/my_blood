import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'user_page_view.dart';

@RoutePage()
class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const UserPageView();
  }
}
