import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'progress_page_view.dart';

@RoutePage()
class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProgressPageView();
  }
}
