import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../injection.dart';
import '../../router/router.gr.dart';
import 'login_page_view.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (event, state) {
        state.maybeMap(
          authenticated: (_) => context.router.replace(const HomeRoute()),
          orElse: () {},
        );
      },
      child: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: const LoginPageView(),
      ),
    );
  }
}
