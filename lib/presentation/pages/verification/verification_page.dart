import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'verification_page_view.dart';

@RoutePage()
class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const VerificationPageView();
  }
}
