import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'register_page_view.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const RegisterPageView();
  }
}
