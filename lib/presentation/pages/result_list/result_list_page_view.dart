import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/app_bar.dart';
import '../../core/widgets/authentication/form/date_field.dart';
import '../../core/widgets/authentication/form/search_field.dart';
import '../../core/widgets/default_padding.dart';
import 'widgets/result_card.dart';

class ResultListPageView extends StatelessWidget {
  const ResultListPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          title: 'resultListAppBarTitle'.tr(),
          leading: IconButton(
            icon: const Icon(Icons.home, color: Colors.black),
            onPressed: () => context.router.pop(),
          ),
        ),
        body: DefaultPadding(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SearchField(
                  hintText: 'resultListSearchFieldHint'.tr(),
                ),
                const SizedBox(height: 20),
                DateField(
                  hintText: 'dateFieldHint'.tr(),
                ),
                const SizedBox(height: 20),
                for (int i = 0; i < 10; i++) const ResultCard()
              ],
            ),
          ),
        ));
  }
}
