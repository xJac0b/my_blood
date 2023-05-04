import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/app_bar.dart';
import '../../core/widgets/date_field.dart';
import '../../core/widgets/default_padding.dart';
import '../../core/widgets/search_field.dart';
import 'widgets/progress_graph.dart';

class ProgressPageView extends StatelessWidget {
  const ProgressPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          title: 'progressAppBarTitle'.tr(),
          leading: IconButton(
            icon: const Icon(Icons.home, color: Colors.black),
            onPressed: () => context.router.pop(),
          ),
        ),
        body: DefaultPadding(
          child: Column(
            children: [
              SearchField(hintText: 'progressSearchFieldHint'.tr()),
              const SizedBox(height: 20),
              DateField(hintText: 'progressDateFieldStart'.tr()),
              const SizedBox(height: 20),
              DateField(hintText: 'progressDateFieldEnd'.tr()),
              const SizedBox(height: 40),
              const ProgressGraph()
            ],
          ),
        ));
  }
}
