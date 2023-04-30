import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'result_list_page_view.dart';

@RoutePage()
class ResultListPage extends StatelessWidget {
  const ResultListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResultListPageView();
  }
}
