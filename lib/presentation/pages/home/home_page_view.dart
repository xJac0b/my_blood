import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../core/widgets/app_bar.dart';
import '../../core/widgets/default_padding.dart';
import '../../core/widgets/text/headline_large.dart';
import '../../router/router.gr.dart';
import 'widgets/buttons_section.dart';
import 'widgets/results_section.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(listener: (event, state) {
          state.maybeMap(
            unauthenticated: (_) => context.router.replace(LoginRoute()),
            orElse: () {},
          );
        })
      ],
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const DefaultPadding(
                  child: CustomAppBar(
                leading: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 201, 208, 213),
                ),
              )),
              DefaultPadding(
                  child: HeadlineLarge('${'greeting'.tr()} John 👋')),
              const ResultsSection(),
              const DefaultPadding(
                child: ButtonsSection(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
