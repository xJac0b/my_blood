import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/auth/user/user_bloc.dart';
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
            authenticated: (_) =>
                context.read<UserBloc>().add(const UserEvent.loadUser()),
            unauthenticated: (_) {
              context.router.replace(const LoginRoute());
              context.read<UserBloc>().add(const UserEvent.loadUser());
            },
            orElse: () {},
          );
        })
      ],
      child: Scaffold(
        appBar: CustomAppBar(
          leading: IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                return DefaultPadding(
                    child: HeadlineLarge(
                        '${'greeting'.tr()} ${state.user?.displayName.value.fold((l) => l, (r) => r)} 👋'));
              },
            ),
            const ResultsSection(),
            const DefaultPadding(
              child: ButtonsSection(),
            ),
          ],
        ),
      ),
    );
  }
}
