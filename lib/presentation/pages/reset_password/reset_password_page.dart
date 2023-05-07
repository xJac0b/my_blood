import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'reset_password_page_view.dart';

@RoutePage()
class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResetPasswordPageView();
  }
}
