import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'fill_data_page_view.dart';

@RoutePage()
class FillDataPage extends StatelessWidget {
  const FillDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FillDataPageView();
  }
}
